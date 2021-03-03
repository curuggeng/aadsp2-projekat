#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include <common.h>

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 5
#define L_CHANNEL 0
#define R_CHANNEL 1
#define C_CHANNEL 2
#define LS_CHANNEL 3
#define RS_CHANNEL 4
//#define DB_TO_LINEAR(X) FRACT_NUM(pow(10.0, ((X) / 20.0)))
enum { MODE2_0_0, MODE0_2_0, MODE3_2_0 };


// Bafer koji sluzi i za ulaz i izlaz
__memY DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

__memX static DSPfract gain_2db = FRACT_NUM(0.79);
__memX static DSPfract gain_6db = FRACT_NUM(0.5);

// Ova dva mogu da se menjaju
__memX DSPfract gain_input = FRACT_NUM(0.5);
__memX DSPfract gain_headroom = FRACT_NUM(0.5);


// Defoltno stanje MODE_2_0_0
__memX int working_mode = MODE3_2_0;

__memY DSPint enable = 1;


typedef enum __characteristic
{
	CHARACTERISTICS_HARD_KNEE = 0,
	CHARACTERISTICS_SOFT_KNEE
} characteristic_t;


typedef struct __AudioExpander
{
	DSPint characteristics;
	DSPfract threshold;
	DSPfract ratio;
} AudioExpander_t;

__memY AudioExpander_t expander;


static void
audio_expander_init()
{
	expander.ratio = FRACT_NUM(0.9);
	expander.threshold = FRACT_NUM(0.1);
	expander.characteristics = CHARACTERISTICS_HARD_KNEE;
}


static void
gst_audio_dynamic_transform_expander_float(__memY DSPfract * data)
{
	DSPfract val;
	DSPfract threshold = expander.threshold;
	DSPfract zero;
	DSPfract a_p, b_p, c_p;
	DSPfract a_n, b_n, c_n;
	DSPfract r2;
	DSPint i;

	/* Nothing to do for us here if threshold equals 0.0
	* or ratio equals 1.0 */
	if (expander.threshold == FRACT_NUM(0.0) || expander.ratio == FRACT_NUM_HEX(0x7fffffff))
		return;


	if (expander.characteristics == CHARACTERISTICS_HARD_KNEE)
	{
		/* zero crossing of our function */
		if (expander.ratio != FRACT_NUM(0.0))
			zero = threshold - threshold / expander.ratio;
		else
			zero = FRACT_NUM(0.0);

		if (zero < FRACT_NUM(0.0))
			zero = FRACT_NUM(0.0);

		for (i = 0; i < BLOCK_SIZE; i++) {
			val = *data;

			if (((val - threshold) < FRACT_NUM(0.0)) && ((val - zero) > FRACT_NUM(0.0))) {
				val = expander.ratio * val + threshold * (FRACT_NUM_HEX(0x7fffffff) - expander.ratio);
			}
			else if ((((val - zero) <= FRACT_NUM(0.0)) && val > FRACT_NUM(0.0)) || (((val + zero) >= -zero) && val < FRACT_NUM(0.0))) {
				val = FRACT_NUM(0.0);
			}
			else if (((val + threshold) > FRACT_NUM(0.0)) && val < -zero) {
				val = expander.ratio * val - threshold * (FRACT_NUM(1.0) - expander.ratio);
			}
			*data = (DSPfract)val;
			data++;
		}
		data -= BLOCK_SIZE;
	}
	else
	{
		/* zero crossing of our function */
		DSPaccum div = FRACT_NUM(0.5) + (expander.ratio >> 1);
		DSPfract div2;
		zero = (threshold * (expander.ratio - FRACT_NUM_HEX(0x7fffffff))) / div;

		zero = zero >> 1;

		if (zero < FRACT_NUM(0.0))
			zero = FRACT_NUM(0.0);

		/* We build a 2n degree polynomial here for values between
		* 0 and threshold or 0 and -threshold with:
		* f(t) = t, f'(t) = 1, f(z) = 0, f'(z) = r
		* z between 0 and t
		* =>
		* a = (1 - r^2) / (4 * t)
		* b = (1 + r^2) / 2
		* c = t * (1.0 - b - a*t)
		* f(x) = ax^2 + bx + c */
		r2 = expander.ratio * expander.ratio;
		a_p = (FRACT_NUM_HEX(0x7fffffff) - r2) / (threshold << 2);
		b_p = (FRACT_NUM_HEX(0x7fffffff) + r2) >>1 ;
		c_p = threshold * (FRACT_NUM_HEX(0x7fffffff) - b_p - a_p * threshold);


		div2 = FRACT_NUM(-0.25) * (threshold << 2);
		a_n = ((FRACT_NUM_HEX(0x7fffffff) - r2) / div2);
		a_n = a_n << 2;


		b_n = (FRACT_NUM_HEX(0x7fffffff) + r2) >> 1;
		c_n = -threshold * (FRACT_NUM_HEX(0x7fffffff) - b_n + a_n * threshold);

		for (i = 0; i < BLOCK_SIZE; i++) {
			val = *data;

			if (((val - threshold) < FRACT_NUM(0.0)) && val > zero) {
				a_p = a_p * val;
				a_p = a_p * val;
				val = a_p  + b_p * val + c_p;
			}
			else if ((((val - zero) <= FRACT_NUM(0.0)) && val > FRACT_NUM(0.0)) || (((val + zero) >= FRACT_NUM(0.0)) && val < FRACT_NUM(0.0))) {
				val = FRACT_NUM(0.0);
			}
			else if (((val + threshold)> FRACT_NUM(0.0)) && ((val + zero) < FRACT_NUM(0.0))) {
				a_n = a_n * val;
				a_n = a_n * val;
				val = a_n  + b_n * val + c_n;
			}
			*data = (DSPfract)val;
			data++;
		}
		data -= BLOCK_SIZE;
	}
}


void processing() {
	DSPint i;

	__memY DSPfract* ptrL = sampleBuffer[L_CHANNEL];
	__memY DSPfract* ptrR = sampleBuffer[R_CHANNEL];
	__memY DSPfract* ptrC = sampleBuffer[C_CHANNEL];
	__memY DSPfract* ptrLS = sampleBuffer[LS_CHANNEL];
	__memY DSPfract* ptrRS = sampleBuffer[RS_CHANNEL];

	for (i = 0; i < BLOCK_SIZE; i++) {
		*ptrL = *ptrL * gain_input;
		ptrL++;
		*ptrR = *ptrR * gain_input;
		ptrR++;
	}
	ptrL -= BLOCK_SIZE;
	ptrR -= BLOCK_SIZE;
	if (working_mode == MODE2_0_0) {
		for (i = 0; i < BLOCK_SIZE; i++) {
			*ptrL += *ptrR;
			*ptrL = *ptrL * gain_headroom;
			*ptrL = *ptrL*gain_6db;
			*ptrR = *ptrL;
			ptrL++;
			ptrR++;
		}
		ptrL -= BLOCK_SIZE;
		ptrR -= BLOCK_SIZE;
	}

	if (working_mode == MODE0_2_0) {
		
		for (i = 0; i < BLOCK_SIZE; i++) { // sredjujem sve za kanale L i R za gornji deo sabiraca, a ove sto idu na expander pamtim u LS,RS
			*ptrLS = *ptrL;

			*ptrL += *ptrR;
			*ptrL = *ptrL * gain_headroom;
			*ptrL = *ptrL * gain_6db;
			*ptrRS = *ptrR;
			
			*ptrR = *ptrL;
			ptrL++;
			ptrR++;
			ptrLS++;
			ptrRS++;
		}
		ptrL -= BLOCK_SIZE;
		ptrR -= BLOCK_SIZE;
		ptrLS -= BLOCK_SIZE;
		ptrRS -= BLOCK_SIZE;
		
		gst_audio_dynamic_transform_expander_float(ptrLS);
		gst_audio_dynamic_transform_expander_float(ptrRS);
		
		for (i = 0; i < BLOCK_SIZE; i++) {
			*ptrLS = *ptrLS * gain_2db;
			*ptrRS = *ptrRS * gain_2db;

			*ptrLS += *ptrL;
			*ptrRS += *ptrR;

			ptrL++;
			ptrR++;
			ptrLS++;
			ptrRS++;
		}
		ptrL -= BLOCK_SIZE;
		ptrR -= BLOCK_SIZE;
		ptrLS -= BLOCK_SIZE;
		ptrRS -= BLOCK_SIZE;
		
	}

	if (working_mode == MODE3_2_0) {

		for (i = 0; i < BLOCK_SIZE; i++) { // sredjujem sve za kanale L i R za gornji deo sabiraca, a ove sto idu na expander pamtim u LS,RS
			*ptrLS = *ptrL;

			*ptrL += *ptrR;
			*ptrC = *ptrL * gain_headroom;
			*ptrL = *ptrL * gain_headroom;
			*ptrL = *ptrL *gain_6db;
			*ptrRS = *ptrR;

			*ptrR = *ptrL;

			ptrL++;
			ptrR++;
			ptrC++;
			ptrRS++;
			ptrLS++;
		}
		ptrL -= BLOCK_SIZE;
		ptrR -= BLOCK_SIZE;
		ptrC -= BLOCK_SIZE;
		ptrRS -= BLOCK_SIZE;
		ptrLS -= BLOCK_SIZE;

		gst_audio_dynamic_transform_expander_float(ptrLS);
		gst_audio_dynamic_transform_expander_float(ptrRS);

		for (i = 0; i < BLOCK_SIZE; i++) {
			*ptrLS = *ptrLS * gain_2db;
			*ptrRS = *ptrRS * gain_2db;

			*ptrLS += *ptrL;
			*ptrRS += *ptrR;	

			ptrL++;
			ptrR++;
			ptrRS++;
			ptrLS++;
		}
		ptrL -= BLOCK_SIZE;
		ptrR -= BLOCK_SIZE;
		ptrRS -= BLOCK_SIZE;
		ptrLS -= BLOCK_SIZE;

	}


}

int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;

	char WavInputName[256];
	char WavOutputName[256];

    int nChannels;
	int bitsPerSample;
    int sampleRate;
    int iNumSamples;

    audio_expander_init();


	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,"Freq_sweep_short.wav");
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	if (working_mode == MODE3_2_0) {
		nChannels = MAX_NUM_CHANNEL;
	}else{
		nChannels = 2;
	}
	bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------
	
	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,"out_short.wav");
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, nChannels, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<2; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}
			if (enable) {
				processing();
			}
			for(j=0; j<BLOCK_SIZE; j++){
				if (working_mode != MODE0_2_0) {
					for (k = 0; k < nChannels; k++)
					{
						sample = bitsr(sampleBuffer[k][j]);
						cl_wavwrite_sendsample(wav_out, sample);
					}
				}
				else {
					for (k = 0; k < nChannels; k++)
					{
						sample = bitsr(sampleBuffer[k+2][j]);
						cl_wavwrite_sendsample(wav_out, sample);
					}
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
