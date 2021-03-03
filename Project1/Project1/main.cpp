#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <stdio.h>
#include "WAVheader.h"
//#include "expander.c"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 5
#define L_CHANNEL 0
#define R_CHANNEL 1
#define C_CHANNEL 2
#define LS_CHANNEL 3
#define RS_CHANNEL 4
#define DB_TO_LINEAR(X) pow(10.0, ((X) / 20.0))

enum mode { MODE2_0_0, MODE0_2_0, MODE3_2_0 };

// Bafer koji sluzi i za ulaz i izlaz
double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

static double gain_2db = DB_TO_LINEAR(-2);
static double gain_6db = DB_TO_LINEAR(-6);

// Ova dva mogu da se menjaju
double gain_input = DB_TO_LINEAR(-6);
double gain_headroom = DB_TO_LINEAR(-6);


// Defoltno stanje MODE_2_0_0
mode working_mode = MODE0_2_0;
int expander_mode  = 0;
int enable = 1;


typedef enum __characteristic
{
	CHARACTERISTICS_HARD_KNEE = 0,
	CHARACTERISTICS_SOFT_KNEE
} characteristic_t;


typedef struct __AudioExpander
{
	int characteristics;
	double threshold;
	double ratio;
} AudioExpander_t;

AudioExpander_t expander;


static void
audio_expander_init()
{
	expander.ratio = 0.9;
	expander.threshold = 0.1;
	expander.characteristics = expander_mode;
}


static void
gst_audio_dynamic_transform_expander_float(AudioExpander_t * expander,
	double * data, unsigned int num_samples)
{
	double val, threshold = expander->threshold, zero;
	double a_p, b_p, c_p;
	double a_n, b_n, c_n;
	double r2;
	int i;

	/* Nothing to do for us here if threshold equals 0.0
	* or ratio equals 1.0 */
	if (expander->threshold == 0.0 || expander->ratio == 1.0)
		return;


	if (expander->characteristics == CHARACTERISTICS_HARD_KNEE)
	{
		/* zero crossing of our function */
		if (expander->ratio != 0.0)
			zero = threshold - threshold / expander->ratio;
		else
			zero = 0.0;

		if (zero < 0.0)
			zero = 0.0;

		for (i = 0; i < num_samples; i++) {
			val = data[i];

			if (val < threshold && val > zero) {
				val = expander->ratio * val + threshold * (1.0 - expander->ratio);
			}
			else if ((val <= zero && val > 0.0) || (val >= -zero && val < 0.0)) {
				val = 0.0;
			}
			else if (val > -threshold && val < -zero) {
				val = expander->ratio * val - threshold * (1.0 - expander->ratio);
			}
			data[i] = (double)val;
		}
	}
	else
	{
		/* zero crossing of our function */
		zero = (threshold * (expander->ratio - 1.0)) / (1.0 + expander->ratio);

		if (zero < 0.0)
			zero = 0.0;

		/* We build a 2n degree polynomial here for values between
		* 0 and threshold or 0 and -threshold with:
		* f(t) = t, f'(t) = 1, f(z) = 0, f'(z) = r
		* z between 0 and t
		* =>
		* a = (1 - r^2) / (4 * t)
		* b = (1 + r^2) / 2
		* c = t * (1.0 - b - a*t)
		* f(x) = ax^2 + bx + c */
		r2 = expander->ratio * expander->ratio;
		a_p = (1.0 - r2) / (4.0 * threshold);
		b_p = (1.0 + r2) / 2.0;
		c_p = threshold * (1.0 - b_p - a_p * threshold);
		a_n = (1.0 - r2) / (-4.0 * threshold);
		b_n = (1.0 + r2) / 2.0;
		c_n = -threshold * (1.0 - b_n + a_n * threshold);

		for (i = 0; i < num_samples; i++) {
			val = data[i];

			if (val < threshold && val > zero) {
				val = a_p * val * val + b_p * val + c_p;
			}
			else if ((val <= zero && val > 0.0) || (val >= -zero && val < 0.0)) {
				val = 0.0;
			}
			else if (val > -threshold && val < -zero) {
				val = a_n * val * val + b_n * val + c_n;
			}
			data[i] = (double)val;
		}
	}
}


void processing() {
	int i;

	double* ptrL = sampleBuffer[L_CHANNEL];
	double* ptrR = sampleBuffer[R_CHANNEL];
	double* ptrC = sampleBuffer[C_CHANNEL];
	double* ptrLS = sampleBuffer[LS_CHANNEL];
	double* ptrRS = sampleBuffer[RS_CHANNEL];

	for (i = 0; i < BLOCK_SIZE; i++) {
		ptrL[i] = ptrL[i] * gain_input;
		ptrR[i] = ptrR[i] * gain_input;
	}

	if (working_mode == MODE2_0_0) {
		for (i = 0; i < BLOCK_SIZE; i++) {
			ptrL[i] += ptrR[i];
			ptrL[i] *= (gain_headroom * gain_6db);
			ptrR[i] = ptrL[i];
		}
	}
	if (working_mode == MODE0_2_0) {
		
		for (i = 0; i < BLOCK_SIZE; i++) { // sredjujem sve za kanale L i R za gornji deo sabiraca, a ove sto idu na expander pamtim u LS,RS
			ptrLS[i] = ptrL[i];

			ptrL[i] += ptrR[i];
			ptrL[i] *= (gain_headroom * gain_6db);			
			ptrRS[i] = ptrR[i];
			
			ptrR[i] = ptrL[i];

		}
		gst_audio_dynamic_transform_expander_float(&expander,ptrLS, BLOCK_SIZE);
		gst_audio_dynamic_transform_expander_float(&expander,ptrRS, BLOCK_SIZE);
		
		for (i = 0; i < BLOCK_SIZE; i++) {
			ptrLS[i] *= gain_2db;
			ptrRS[i] *= gain_2db;

			ptrLS[i] += ptrL[i];
			ptrRS[i] += ptrR[i];
		}
	}

	if (working_mode == MODE3_2_0) {

		for (i = 0; i < BLOCK_SIZE; i++) { // sredjujem sve za kanale L i R za gornji deo sabiraca, a ove sto idu na expander pamtim u LS,RS
			ptrLS[i] = ptrL[i];

			ptrL[i] += ptrR[i];
			ptrC[i] = ptrL[i] * gain_headroom;
			ptrL[i] *= (gain_headroom * gain_6db);
			ptrRS[i] = ptrR[i];

			ptrR[i] = ptrL[i];

		}
		gst_audio_dynamic_transform_expander_float(&expander,ptrLS, BLOCK_SIZE);
		gst_audio_dynamic_transform_expander_float(&expander,ptrRS, BLOCK_SIZE);

		for (i = 0; i < BLOCK_SIZE; i++) {
			ptrLS[i] *= gain_2db;
			ptrRS[i] *= gain_2db;

			ptrLS[i] += ptrL[i];
			ptrRS[i] += ptrR[i];
		}
	}


}

int main(int argc, char* argv[])
{	
	if (strcmp(argv[3], "3_2_0") == 0) {
		working_mode = MODE3_2_0;
	}
	else if (strcmp(argv[3], "2_0_0") == 0) {
		working_mode = MODE2_0_0;
	}
	else if (strcmp(argv[3], "0_2_0") == 0) {
		working_mode = MODE0_2_0;
	}

	expander_mode = atoi(argv[4]);


	enable = atoi(argv[5]);


	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr,outputWAVhdr;	

	audio_expander_init();


	// Init channel buffers
	for(int i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName,argv[1]);
	wav_in = OpenWavFileForRead (WavInputName,"rb");
	strcpy(WavOutputName,argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName,"wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	
	if (working_mode == MODE3_2_0) {
		outputWAVhdr.fmt.NumChannels = MAX_NUM_CHANNEL;
	}else{
		outputWAVhdr.fmt.NumChannels = 2;
	}
	
	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		

		// exact file length should be handled correctly...
		for(int i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}
			if (enable) {
				processing();
			}

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				if (working_mode != MODE0_2_0) {
					for (int k = 0; k < outputWAVhdr.fmt.NumChannels; k++)
					{
						sample = sampleBuffer[k][j] * SAMPLE_SCALE;	// crude, non-rounding 			
						sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
						fwrite(&sample, outputWAVhdr.fmt.BitsPerSample / 8, 1, wav_out);
					}
				}
				else {
					for (int k = 0; k < outputWAVhdr.fmt.NumChannels; k++)
					{
						sample = sampleBuffer[k+2][j] * SAMPLE_SCALE;	// crude, non-rounding 			
						sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
						fwrite(&sample, outputWAVhdr.fmt.BitsPerSample / 8, 1, wav_out);
					}
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	
	
	return 0;
}