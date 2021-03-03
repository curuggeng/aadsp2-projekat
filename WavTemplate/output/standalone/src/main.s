	.public _enable
	.public _expander
	.public _gain_headroom
	.public _gain_input
	.public _sampleBuffer
	.public _working_mode
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _printf
	.public _processing
	.extern _strcpy
	.extern __div_sat_laccum
	.extern __mul_sat_laccum
	.extern __div
	.xdata_ovly
__extractedConst_0_10
	.dw  (0x7fffffff)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x73333333)
	.xdata_ovly
__extractedConst_2_1
	.dw  (0xccccccd)
	.ydata_ovly
_enable
	.dw  (0x1)
	.ydata_ovly
_expander
	.bss (0x3)
	.xdata_ovly
_gain_2db
	.dw  (0x651eb852)
	.xdata_ovly
_gain_6db
	.dw  (0x40000000)
	.xdata_ovly
_gain_headroom
	.dw  (0x40000000)
	.xdata_ovly
_gain_input
	.dw  (0x40000000)
	.ydata_ovly
_sampleBuffer
	.bss (0x50)
	.xdata_ovly
_string_const_0
	.dw  (0x46)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x71)
	.dw  (0x5f)
	.dw  (0x73)
	.dw  (0x77)
	.dw  (0x65)
	.dw  (0x65)
	.dw  (0x70)
	.dw  (0x5f)
	.dw  (0x73)
	.dw  (0x68)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x74)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x5f)
	.dw  (0x73)
	.dw  (0x68)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x74)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_working_mode
	.dw  (0x2)
	.code_ovly



_audio_expander_init:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 53 | 
	i7 += 1			# LN: 53 | 
cline_53_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 55 | 
	ymem[_expander + 2] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 56 | 
	ymem[_expander + 1] = a0h			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 57 | 
	ymem[_expander + 0] = a0h			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_220)			# LN: 58 | 
__epilogue_220:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 58 | 
	ret			# LN: 58 | 



_gst_audio_dynamic_transform_expander_float:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 62 | 
	i7 += 1			# LN: 62 | 
	i7 = i7 + (0x10)			# LN: 62 | 
	i1 = i7 - (0x1)			# LN: 62 | 
	xmem[i1] = i0			# LN: 62 | 
cline_62_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_expander + 1]			# LN: 65 | 
	i0 = i7 - (0x2)			# LN: 65 | 
	xmem[i0] = a0h			# LN: 65 | 
cline_65_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_expander + 1]			# LN: 74 | 
	a0 & a0			# LN: 74 | 
	if (a == 0) jmp (cline_74_0)			# LN: 74 | 
	a0 = ymem[_expander + 2]			# LN: 74 | 
	a1 = xmem[__extractedConst_0_10 + 0]			# LN: 74 | 
	a0 - a1			# LN: 74 | 
	if (a != 0) jmp (else_0)			# LN: 74 | 
cline_74_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 75 | 
cline_75_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_expander + 0]			# LN: 78 | 
	a0 & a0			# LN: 78 | 
	if (a != 0) jmp (else_1)			# LN: 78 | 
cline_78_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_expander + 2]			# LN: 81 | 
	a0 & a0			# LN: 81 | 
	if (a == 0) jmp (else_2)			# LN: 81 | 
cline_81_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_expander + 2]			# LN: 82 | 
	i0 = i7 - (0x2)			# LN: 82 | 
	b0 = xmem[i0]; a1 =+ a0			# LN: 82, 82 | 
	a0 =+ b0			# LN: 82 | 
	call (__div_sat_laccum)			# LN: 82 | 
	a0 = a0			# LN: 82 | 
	i0 = i7 - (0x2)			# LN: 82 | 
	a1 = xmem[i0]			# LN: 82 | 
	a0 = a1 - a0			# LN: 82 | 
	i0 = i7 - (0x3)			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
	jmp (endif_2)			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 84 | 
	a0 = 0			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	a0 & a0			# LN: 86 | 
	if (a >= 0) jmp (else_3)			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 87 | 
	a0 = 0			# LN: 87 | 
	xmem[i0] = a0h			# LN: 87 | 
	jmp (endif_3)			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 89 | 
	a0 = 0			# LN: 89 | 
	xmem[i0] = a0h			# LN: 89 | 
	do (0x10), label_end_92			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	i1 = i7 - (0x5)			# LN: 90 | 
	a0 = ymem[i0]			# LN: 90 | 
	xmem[i1] = a0h			# LN: 90 | 
cline_90_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	i0 = i7 - (0x2)			# LN: 92 | 
	a1 = xmem[i0]			# LN: 92 | 
	a0 = a0 - a1			# LN: 92 | 
	if (a >= 0) jmp (else_4)			# LN: 92 | 
	i0 = i7 - (0x5)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	i0 = i7 - (0x3)			# LN: 92 | 
	a1 = xmem[i0]			# LN: 92 | 
	a0 = a0 - a1			# LN: 92 | 
	if (a <= 0) jmp (else_4)			# LN: 92 | 
cline_92_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	x0 = ymem[_expander + 2]			# LN: 93 | 
	i0 = i7 - (0x5)			# LN: 93 | 
	a0 = ymem[_expander + 2]			# LN: 93 | 
	a1 = xmem[__extractedConst_0_10 + 0]			# LN: 93 | 
	x1 = xmem[i0]; a0 = a1 - a0			# LN: 93, 93 | 
	y0 = a0h; a0 = x0 * x1			# LN: 93, 93 | 
	i0 = i7 - (0x2)			# LN: 93 | 
	x0 = xmem[i0]			# LN: 93 | 
	a0 += x0 * y0			# LN: 93 | 
	i0 = i7 - (0x5)			# LN: 93 | 
	xmem[i0] = a0			# LN: 93 | 
	jmp (endif_4)			# LN: 93 | 
cline_93_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	i0 = i7 - (0x3)			# LN: 95 | 
	a1 = xmem[i0]			# LN: 95 | 
	a0 = a0 - a1			# LN: 95 | 
	if (a > 0) jmp (land_1_0)			# LN: 95 | 
	i0 = i7 - (0x5)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	a0 & a0			# LN: 95 | 
	if (a > 0) jmp (cline_95_0)			# LN: 95 | 
land_1_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	i0 = i7 - (0x3)			# LN: 95 | 
	a1 = xmem[i0]			# LN: 95 | 
	a0 = a0 + a1			# LN: 95 | 
	i0 = i7 - (0x3)			# LN: 95 | 
	a1 = xmem[i0]			# LN: 95 | 
	a1 =- a1			# LN: 95 | 
	a0 - a1			# LN: 95 | 
	uhalfword(a0) = (0x1)			# LN: 95 | 
	if (a >= 0) jmp (comparation_0)			# LN: 95 | 
	uhalfword(a0) = (0x0)			# LN: 95 | 
comparation_0:			/* LN: 95 | CYCLE: 0 | RULES: (CComparisonFixedPointRule) */ 
	a0 & a0			# LN: 95 | 
	if (a == 0) jmp (land_2)			# LN: 95 | 
	a0 = 0			# LN: 95 | 
	i0 = i7 - (0x5)			# LN: 95 | 
	a1 = xmem[i0]			# LN: 95 | 
	a1 - a0			# LN: 95 | 
	uhalfword(a0) = (0x1)			# LN: 95 | 
	if (a < 0) jmp (comparation_1)			# LN: 95 | 
	uhalfword(a0) = (0x0)			# LN: 95 | 
land_2:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
comparation_1:			/* LN: 95 | CYCLE: 0 | RULES: (CComparisonFixedPointRule) */ 
	a0 & a0			# LN: 95 | 
	if (a == 0) jmp (else_5)			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 96 | 
	a0 = 0			# LN: 96 | 
	xmem[i0] = a0h			# LN: 96 | 
	jmp (endif_5)			# LN: 96 | 
cline_96_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 98 | 
	a0 = xmem[i0]			# LN: 98 | 
	i0 = i7 - (0x2)			# LN: 98 | 
	a1 = xmem[i0]			# LN: 98 | 
	a0 = a0 + a1			# LN: 98 | 
	if (a <= 0) jmp (else_6)			# LN: 98 | 
	i0 = i7 - (0x3)			# LN: 98 | 
	a0 = xmem[i0]			# LN: 98 | 
	a0 =- a0			# LN: 98 | 
	i0 = i7 - (0x5)			# LN: 98 | 
	a1 = xmem[i0]			# LN: 98 | 
	a1 - a0			# LN: 98 | 
	if (a >= 0) jmp (else_6)			# LN: 98 | 
cline_98_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	x0 = ymem[_expander + 2]			# LN: 99 | 
	i0 = i7 - (0x5)			# LN: 99 | 
	a0 = ymem[_expander + 2]			# LN: 99 | 
	a1 = xmem[__extractedConst_0_10 + 0]			# LN: 99 | 
	x1 = xmem[i0]; a0 = a1 - a0			# LN: 99, 99 | 
	y0 = a0h; a0 = x0 * x1			# LN: 99, 99 | 
	i0 = i7 - (0x2)			# LN: 99 | 
	x0 = xmem[i0]			# LN: 99 | 
	a0 -= x0 * y0			# LN: 99 | 
	i0 = i7 - (0x5)			# LN: 99 | 
	xmem[i0] = a0			# LN: 99 | 
	jmp (endif_6)			# LN: 99 | 
cline_99_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 101 | 
	i1 = i7 - (0x1)			# LN: 101 | 
	i1 = xmem[i1]			# LN: 101 | 
	a0 = xmem[i0]			# LN: 101 | 
	ymem[i1] = a0h			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 102 | 
	i0 = xmem[i0]			# LN: 102 | 
	i1 = i7 - (0x1)			# LN: 102 | 
	i0 += 1			# LN: 102 | 
	xmem[i1] = i0			# LN: 102 | 
cline_102_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	uhalfword(a1) = (0x1)			# LN: 89 | 
	a0 = a0 + a1			# LN: 89 | 
	i0 = i7 - (0x4)			# LN: 89 | 
label_end_92:			# LN: 89 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 89 | 
cline_89_1:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	i1 = i7 - (0x1)			# LN: 104 | 
	i0 = i0 - (0x10)			# LN: 104 | 
	xmem[i1] = i0			# LN: 104 | 
	jmp (endif_1)			# LN: 104 | 
cline_104_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_expander + 2]			# LN: 109 | 
	a0 = a0 >> 1			# LN: 109 | 
	a1 = (0x4000)			# LN: 109 | 
	a0 = a1 + a0			# LN: 109 | 
	i0 = i7 - (0x8)			# LN: 109 | 
	xmem[i0] = a0g; i0 += 1			# LN: 109, 109 | 
	xmem[i0] = a0h; i0 += 1			# LN: 109, 109 | 
	xmem[i0] = a0l			# LN: 109 | 
cline_109_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_expander + 2]			# LN: 111 | 
	a1 = xmem[__extractedConst_0_10 + 0]			# LN: 111 | 
	a0 = a0 - a1			# LN: 111 | 
	x0 = a0h			# LN: 111 | 
	i0 = i7 - (0x2)			# LN: 111 | 
	x1 = xmem[i0]			# LN: 111 | 
	i0 = i7 - (0x8)			# LN: 111 | 
	a1g = xmem[i0]; i0 += 1			# LN: 111, 111 | 
	a1h = xmem[i0]; i0 += 1			# LN: 111, 111 | 
	a0 = x1 * x0			# LN: 111 | 
	a1l = xmem[i0]			# LN: 111 | 
	call (__div_sat_laccum)			# LN: 111 | 
	i0 = i7 - (0x3)			# LN: 111 | 
	xmem[i0] = a0			# LN: 111 | 
cline_111_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 113 | 
	a0 = xmem[i0]			# LN: 113 | 
	a0 = a0 >> 1			# LN: 113 | 
	i0 = i7 - (0x3)			# LN: 113 | 
	xmem[i0] = a0h			# LN: 113 | 
cline_113_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 115 | 
	a0 = xmem[i0]			# LN: 115 | 
	a0 & a0			# LN: 115 | 
	if (a >= 0) jmp (else_7)			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 116 | 
	a0 = 0			# LN: 116 | 
	xmem[i0] = a0h			# LN: 116 | 
	jmp (endif_7)			# LN: 116 | 
cline_116_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	x0 = ymem[_expander + 2]			# LN: 127 | 
	x1 = ymem[_expander + 2]			# LN: 127 | 
	a0 = x0 * x1			# LN: 127 | 
	i0 = i7 - (0x9)			# LN: 127 | 
	xmem[i0] = a0			# LN: 127 | 
cline_127_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_10 + 0]			# LN: 128 | 
	i0 = i7 - (0x9)			# LN: 128 | 
	a1 = xmem[i0]			# LN: 128 | 
	i0 = i7 - (0x2)			# LN: 128 | 
	a1 = xmem[i0]; a0 = a0 - a1			# LN: 128, 128 | 
	a1 = a1 << 1			# LN: 128 | 
	a1 = a1 << 1			# LN: 128 | 
	call (__div_sat_laccum)			# LN: 128 | 
	i0 = i7 - (0xa)			# LN: 128 | 
	xmem[i0] = a0			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_10 + 0]			# LN: 129 | 
	i0 = i7 - (0x9)			# LN: 129 | 
	a1 = xmem[i0]			# LN: 129 | 
	a0 = a0 + a1			# LN: 129 | 
	a0 = a0 >> 1			# LN: 129 | 
	i0 = i7 - (0xb)			# LN: 129 | 
	xmem[i0] = a0h			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_10 + 0]			# LN: 130 | 
	i0 = i7 - (0xb)			# LN: 130 | 
	a1 = xmem[i0]			# LN: 130 | 
	i0 = i7 - (0xa)			# LN: 130 | 
	x0 = xmem[i0]; a0 = a0 - a1			# LN: 130, 130 | 
	i0 = i7 - (0x2)			# LN: 130 | 
	x1 = xmem[i0]; a1 =+ a0			# LN: 130, 130 | 
	i0 = i7 - (0x2)			# LN: 130 | 
	a0 = xmem[i0]; a1 -= x0 * x1			# LN: 130, 130 | 
	call (__mul_sat_laccum)			# LN: 130 | 
	i0 = i7 - (0xc)			# LN: 130 | 
	xmem[i0] = a0			# LN: 130 | 
cline_130_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 133 | 
	a0 = xmem[i0]			# LN: 133 | 
	a0 = a0 << 1			# LN: 133 | 
	a0 = a0 << 1			# LN: 133 | 
	x0 = a0h			# LN: 133 | 
	x1 = (0xe000)			# LN: 133 | 
	a0 = x1 * x0			# LN: 133 | 
	i0 = i7 - (0xd)			# LN: 133 | 
	xmem[i0] = a0			# LN: 133 | 
cline_133_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_10 + 0]			# LN: 134 | 
	i0 = i7 - (0x9)			# LN: 134 | 
	a1 = xmem[i0]			# LN: 134 | 
	a0 = a0 - a1			# LN: 134 | 
	i0 = i7 - (0xd)			# LN: 134 | 
	a1 = xmem[i0]			# LN: 134 | 
	call (__div_sat_laccum)			# LN: 134 | 
	i0 = i7 - (0xe)			# LN: 134 | 
	xmem[i0] = a0			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	a0 = a0 << 1			# LN: 135 | 
	a0 = a0 << 1			# LN: 135 | 
	i0 = i7 - (0xe)			# LN: 135 | 
	xmem[i0] = a0h			# LN: 135 | 
cline_135_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_10 + 0]			# LN: 138 | 
	i0 = i7 - (0x9)			# LN: 138 | 
	a1 = xmem[i0]			# LN: 138 | 
	a0 = a0 + a1			# LN: 138 | 
	a0 = a0 >> 1			# LN: 138 | 
	i0 = i7 - (0xf)			# LN: 138 | 
	xmem[i0] = a0h			# LN: 138 | 
cline_138_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 139 | 
	a0 = xmem[i0]			# LN: 139 | 
	a1 = xmem[__extractedConst_0_10 + 0]			# LN: 139 | 
	i0 = i7 - (0xf)			# LN: 139 | 
	b0 = xmem[i0]; a0 =- a0			# LN: 139, 139 | 
	i0 = i7 - (0xe)			# LN: 139 | 
	x0 = xmem[i0]; a1 = a1 - b0			# LN: 139, 139 | 
	i0 = i7 - (0x2)			# LN: 139 | 
	y0 = a0h			# LN: 139 | 
	x1 = xmem[i0]; a0 = +y0			# LN: 139, 139 | 
	a1 += x0 * x1			# LN: 139 | 
	call (__mul_sat_laccum)			# LN: 139 | 
	i0 = i7 - (0x10)			# LN: 139 | 
	xmem[i0] = a0			# LN: 139 | 
cline_139_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 141 | 
	a0 = 0			# LN: 141 | 
	xmem[i0] = a0h			# LN: 141 | 
	do (0x10), label_end_93			# LN: 141 | 
cline_141_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 142 | 
	i0 = xmem[i0]			# LN: 142 | 
	i1 = i7 - (0x5)			# LN: 142 | 
	a0 = ymem[i0]			# LN: 142 | 
	xmem[i1] = a0h			# LN: 142 | 
cline_142_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 144 | 
	a0 = xmem[i0]			# LN: 144 | 
	i0 = i7 - (0x2)			# LN: 144 | 
	a1 = xmem[i0]			# LN: 144 | 
	a0 = a0 - a1			# LN: 144 | 
	if (a >= 0) jmp (else_8)			# LN: 144 | 
	i0 = i7 - (0x5)			# LN: 144 | 
	a0 = xmem[i0]			# LN: 144 | 
	i0 = i7 - (0x3)			# LN: 144 | 
	a1 = xmem[i0]			# LN: 144 | 
	a0 - a1			# LN: 144 | 
	if (a <= 0) jmp (else_8)			# LN: 144 | 
cline_144_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 145 | 
	x0 = xmem[i0]			# LN: 145 | 
	i0 = i7 - (0x5)			# LN: 145 | 
	x1 = xmem[i0]			# LN: 145 | 
	a0 = x0 * x1			# LN: 145 | 
	i0 = i7 - (0xa)			# LN: 145 | 
	xmem[i0] = a0			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 146 | 
	x0 = xmem[i0]			# LN: 146 | 
	i0 = i7 - (0x5)			# LN: 146 | 
	x1 = xmem[i0]			# LN: 146 | 
	a0 = x0 * x1			# LN: 146 | 
	i0 = i7 - (0xa)			# LN: 146 | 
	xmem[i0] = a0			# LN: 146 | 
cline_146_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 147 | 
	x0 = xmem[i0]			# LN: 147 | 
	i0 = i7 - (0x5)			# LN: 147 | 
	i1 = i7 - (0xa)			# LN: 147 | 
	a0 = xmem[i1]			# LN: 147 | 
	x1 = xmem[i0]			# LN: 147 | 
	i0 = i7 - (0xc)			# LN: 147 | 
	a1 = xmem[i0]; a0 += x0 * x1			# LN: 147, 147 | 
	a0 = a0 + a1			# LN: 147 | 
	i0 = i7 - (0x5)			# LN: 147 | 
	xmem[i0] = a0			# LN: 147 | 
	jmp (endif_8)			# LN: 147 | 
cline_147_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 149 | 
	a0 = xmem[i0]			# LN: 149 | 
	i0 = i7 - (0x3)			# LN: 149 | 
	a1 = xmem[i0]			# LN: 149 | 
	a0 = a0 - a1			# LN: 149 | 
	if (a > 0) jmp (land_5_0)			# LN: 149 | 
	i0 = i7 - (0x5)			# LN: 149 | 
	a0 = xmem[i0]			# LN: 149 | 
	a0 & a0			# LN: 149 | 
	if (a > 0) jmp (cline_149_0)			# LN: 149 | 
land_5_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 149 | 
	a0 = xmem[i0]; a1 = 0			# LN: 149, 149 | 
	i0 = i7 - (0x3)			# LN: 149 | 
	b0 = xmem[i0]			# LN: 149 | 
	a0 = a0 + b0			# LN: 149 | 
	a0 - a1			# LN: 149 | 
	uhalfword(a0) = (0x1)			# LN: 149 | 
	if (a >= 0) jmp (comparation_2)			# LN: 149 | 
	uhalfword(a0) = (0x0)			# LN: 149 | 
comparation_2:			/* LN: 149 | CYCLE: 0 | RULES: (CComparisonFixedPointRule) */ 
	a0 & a0			# LN: 149 | 
	if (a == 0) jmp (land_6)			# LN: 149 | 
	a0 = 0			# LN: 149 | 
	i0 = i7 - (0x5)			# LN: 149 | 
	a1 = xmem[i0]			# LN: 149 | 
	a1 - a0			# LN: 149 | 
	uhalfword(a0) = (0x1)			# LN: 149 | 
	if (a < 0) jmp (comparation_3)			# LN: 149 | 
	uhalfword(a0) = (0x0)			# LN: 149 | 
land_6:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
comparation_3:			/* LN: 149 | CYCLE: 0 | RULES: (CComparisonFixedPointRule) */ 
	a0 & a0			# LN: 149 | 
	if (a == 0) jmp (else_9)			# LN: 149 | 
cline_149_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 150 | 
	a0 = 0			# LN: 150 | 
	xmem[i0] = a0h			# LN: 150 | 
	jmp (endif_9)			# LN: 150 | 
cline_150_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	i0 = i7 - (0x2)			# LN: 152 | 
	a1 = xmem[i0]			# LN: 152 | 
	a0 = a0 + a1			# LN: 152 | 
	if (a <= 0) jmp (else_10)			# LN: 152 | 
	i0 = i7 - (0x5)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	i0 = i7 - (0x3)			# LN: 152 | 
	a1 = xmem[i0]			# LN: 152 | 
	a0 = a0 + a1			# LN: 152 | 
	if (a >= 0) jmp (else_10)			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 153 | 
	x0 = xmem[i0]			# LN: 153 | 
	i0 = i7 - (0x5)			# LN: 153 | 
	x1 = xmem[i0]			# LN: 153 | 
	a0 = x0 * x1			# LN: 153 | 
	i0 = i7 - (0xe)			# LN: 153 | 
	xmem[i0] = a0			# LN: 153 | 
cline_153_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xe)			# LN: 154 | 
	x0 = xmem[i0]			# LN: 154 | 
	i0 = i7 - (0x5)			# LN: 154 | 
	x1 = xmem[i0]			# LN: 154 | 
	a0 = x0 * x1			# LN: 154 | 
	i0 = i7 - (0xe)			# LN: 154 | 
	xmem[i0] = a0			# LN: 154 | 
cline_154_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xf)			# LN: 155 | 
	x0 = xmem[i0]			# LN: 155 | 
	i0 = i7 - (0x5)			# LN: 155 | 
	i1 = i7 - (0xe)			# LN: 155 | 
	a0 = xmem[i1]			# LN: 155 | 
	x1 = xmem[i0]			# LN: 155 | 
	i0 = i7 - (0x10)			# LN: 155 | 
	a1 = xmem[i0]; a0 += x0 * x1			# LN: 155, 155 | 
	a0 = a0 + a1			# LN: 155 | 
	i0 = i7 - (0x5)			# LN: 155 | 
	xmem[i0] = a0			# LN: 155 | 
	jmp (endif_10)			# LN: 155 | 
cline_155_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 157 | 
	i1 = i7 - (0x1)			# LN: 157 | 
	i1 = xmem[i1]			# LN: 157 | 
	a0 = xmem[i0]			# LN: 157 | 
	ymem[i1] = a0h			# LN: 157 | 
cline_157_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 158 | 
	i0 = xmem[i0]			# LN: 158 | 
	i1 = i7 - (0x1)			# LN: 158 | 
	i0 += 1			# LN: 158 | 
	xmem[i1] = i0			# LN: 158 | 
cline_158_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 141 | 
	a0 = xmem[i0]			# LN: 141 | 
	uhalfword(a1) = (0x1)			# LN: 141 | 
	a0 = a0 + a1			# LN: 141 | 
	i0 = i7 - (0x4)			# LN: 141 | 
label_end_93:			# LN: 141 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 141 | 
cline_141_1:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 160 | 
	i0 = xmem[i0]			# LN: 160 | 
	i1 = i7 - (0x1)			# LN: 160 | 
	i0 = i0 - (0x10)			# LN: 160 | 
	xmem[i1] = i0			# LN: 160 | 
cline_160_0:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 162 | 
__epilogue_222:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x10)			# LN: 162 | 
	i7 -= 1			# LN: 162 | 
	ret			# LN: 162 | 



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 288 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 288 | 
	i7 += 1			# LN: 288 | 
	i7 = i7 + (0x20c)			# LN: 288 | 
	i1 = i7 - (0x1)			# LN: 288 | 
	xmem[i1] = a0h			# LN: 288 | 
	i1 = i7 - (0x2)			# LN: 288 | 
	xmem[i1] = i0			# LN: 288 | 
cline_288_0:			/* LN: 301 | CYCLE: 0 | RULES: () */ 
	call (_audio_expander_init)			# LN: 301 | 
cline_301_0:			/* LN: 306 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (258 - 0)			# LN: 306 | 
	i1 = (0) + (_string_const_0)			# LN: 306 | 
	call (_strcpy)			# LN: 306 | 
cline_306_0:			/* LN: 307 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (258 - 0)			# LN: 307 | 
	call (_cl_wavread_open)			# LN: 307 | 
	AnyReg(i0, a0h)			# LN: 307 | 
	i1 = i7 - (0x103)			# LN: 307 | 
	xmem[i1] = i0			# LN: 307 | 
cline_307_0:			/* LN: 308 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 308 | 
	a0 = xmem[i0]			# LN: 308 | 
	a0 & a0			# LN: 308 | 
	if (a != 0) jmp (else_14)			# LN: 308 | 
cline_308_0:			/* LN: 310 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 310 | 
	call (_printf)			# LN: 310 | 
cline_310_0:			/* LN: 311 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 311 | 
	jmp (__epilogue_226)			# LN: 311 | 
cline_311_0:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
endif_14:			/* LN: 308 | CYCLE: 0 | RULES: () */ 
else_14:			/* LN: 308 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_working_mode + 0]			# LN: 317 | 
	uhalfword(a1) = (0x2)			# LN: 317 | 
	a0 - a1			# LN: 317 | 
	if (a != 0) jmp (else_15)			# LN: 317 | 
cline_317_0:			/* LN: 318 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 318 | 
	uhalfword(a0) = (0x5)			# LN: 318 | 
	xmem[i0] = a0h			# LN: 318 | 
	jmp (endif_15)			# LN: 318 | 
cline_318_0:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
else_15:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 320 | 
	uhalfword(a0) = (0x2)			# LN: 320 | 
	xmem[i0] = a0h			# LN: 320 | 
cline_320_0:			/* LN: 322 | CYCLE: 0 | RULES: () */ 
endif_15:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 322 | 
	i0 = xmem[i0]			# LN: 322 | 
	call (_cl_wavread_bits_per_sample)			# LN: 322 | 
	i0 = i7 - (0x105)			# LN: 322 | 
	xmem[i0] = a0h			# LN: 322 | 
cline_322_0:			/* LN: 323 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 323 | 
	i0 = xmem[i0]			# LN: 323 | 
	call (_cl_wavread_frame_rate)			# LN: 323 | 
	i0 = i7 - (0x106)			# LN: 323 | 
	xmem[i0] = a0h			# LN: 323 | 
cline_323_0:			/* LN: 324 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 324 | 
	i0 = xmem[i0]			# LN: 324 | 
	call (_cl_wavread_number_of_frames)			# LN: 324 | 
	i0 = i7 - (0x107)			# LN: 324 | 
	xmem[i0] = a0h			# LN: 324 | 
cline_324_0:			/* LN: 329 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (519 - 0)			# LN: 329 | 
	i1 = (0) + (_string_const_2)			# LN: 329 | 
	call (_strcpy)			# LN: 329 | 
cline_329_0:			/* LN: 330 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (519 - 0)			# LN: 330 | 
	i1 = i7 - (0x105)			# LN: 330 | 
	a0 = xmem[i1]			# LN: 330 | 
	i1 = i7 - (0x104)			# LN: 330 | 
	a1 = xmem[i1]			# LN: 330 | 
	i1 = i7 - (0x106)			# LN: 330 | 
	b0 = xmem[i1]			# LN: 330 | 
	call (_cl_wavwrite_open)			# LN: 330 | 
	AnyReg(i0, a0h)			# LN: 330 | 
	i1 = i7 - (0x208)			# LN: 330 | 
	xmem[i1] = i0			# LN: 330 | 
cline_330_0:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 331 | 
	a0 = xmem[i0]			# LN: 331 | 
	a0 & a0			# LN: 331 | 
	if (a != 0) jmp (else_16)			# LN: 331 | 
cline_331_0:			/* LN: 333 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 333 | 
	call (_printf)			# LN: 333 | 
cline_333_0:			/* LN: 334 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 334 | 
	jmp (__epilogue_226)			# LN: 334 | 
cline_334_0:			/* LN: 347 | CYCLE: 0 | RULES: () */ 
endif_16:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
else_16:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 347 | 
	a0 = 0			# LN: 347 | 
	xmem[i0] = a0h			# LN: 347 | 
for_8:			/* LN: 347 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x107)			# LN: 347 | 
	a0 = xmem[i0]			# LN: 347 | 
	uhalfword(a1) = (0x10)			# LN: 347 | 
	call (__div)			# LN: 347 | 
	i0 = i7 - (0x209)			# LN: 347 | 
	a1 = xmem[i0]			# LN: 347 | 
	a1 - a0			# LN: 347 | 
	if (a >= 0) jmp (for_end_8)			# LN: 347 | 
cline_347_0:			/* LN: 349 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 349 | 
	a0 = 0			# LN: 349 | 
	xmem[i0] = a0h			# LN: 349 | 
	do (0x10), label_end_101			# LN: 349 | 
cline_349_0:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
label_begin_101:			/* LN: 349 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 351 | 
	a0 = 0			# LN: 351 | 
	xmem[i0] = a0h			# LN: 351 | 
	do (0x2), label_end_100			# LN: 351 | 
cline_351_0:			/* LN: 353 | CYCLE: 0 | RULES: () */ 
label_begin_100:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 353 | 
	i0 = xmem[i0]			# LN: 353 | 
	call (_cl_wavread_recvsample)			# LN: 353 | 
	i0 = i7 - (0x20c)			# LN: 353 | 
	xmem[i0] = a0h			# LN: 353 | 
cline_353_0:			/* LN: 354 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 354 | 
	a0 = xmem[i0]			# LN: 354 | 
	a0 = a0 << 4			# LN: 354 | 
	i0 = a0			# LN: 354 | 
	i1 = i7 - (0x20a)			# LN: 354 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 354 | 
	a0 = xmem[i1]			# LN: 354 | 
	a1 = i0			# LN: 354 | 
	a0 = a1 + a0			# LN: 354 | 
	AnyReg(i0, a0h)			# LN: 354 | 
	i1 = i7 - (0x20c)			# LN: 354 | 
	a0 = xmem[i1]			# LN: 354 | 
	ymem[i0] = a0h			# LN: 354 | 
cline_354_0:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 355 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 351 | 
	a0 = xmem[i0]			# LN: 351 | 
	uhalfword(a1) = (0x1)			# LN: 351 | 
	a0 = a0 + a1			# LN: 351 | 
	i0 = i7 - (0x20b)			# LN: 351 | 
label_end_100:			# LN: 351 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 351 | 
cline_351_1:			/* LN: 349 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 356 | CYCLE: 0 | RULES: () */ 
for_end_10:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 349 | 
	a0 = xmem[i0]			# LN: 349 | 
	uhalfword(a1) = (0x1)			# LN: 349 | 
	a0 = a0 + a1			# LN: 349 | 
	i0 = i7 - (0x20a)			# LN: 349 | 
label_end_101:			# LN: 349 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 349 | 
cline_349_1:			/* LN: 357 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 349 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_enable + 0]			# LN: 357 | 
	a0 & a0			# LN: 357 | 
	if (a == 0) jmp (else_17)			# LN: 357 | 
cline_357_0:			/* LN: 358 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 358 | 
	jmp (endif_17)			# LN: 358 | 
cline_358_0:			/* LN: 360 | CYCLE: 0 | RULES: () */ 
endif_17:			/* LN: 357 | CYCLE: 0 | RULES: () */ 
else_17:			/* LN: 357 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 360 | 
	a0 = 0			# LN: 360 | 
	xmem[i0] = a0h			# LN: 360 | 
	do (0x10), label_end_102			# LN: 360 | 
cline_360_0:			/* LN: 361 | CYCLE: 0 | RULES: () */ 
label_begin_102:			/* LN: 360 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_working_mode + 0]			# LN: 361 | 
	uhalfword(a1) = (0x1)			# LN: 361 | 
	a0 - a1			# LN: 361 | 
	if (a == 0) jmp (else_18)			# LN: 361 | 
cline_361_0:			/* LN: 362 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 362 | 
	a0 = 0			# LN: 362 | 
	xmem[i0] = a0h			# LN: 362 | 
for_12:			/* LN: 362 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 362 | 
	a0 = xmem[i0]			# LN: 362 | 
	i0 = i7 - (0x104)			# LN: 362 | 
	a1 = xmem[i0]			# LN: 362 | 
	a0 - a1			# LN: 362 | 
	if (a >= 0) jmp (for_end_12)			# LN: 362 | 
cline_362_0:			/* LN: 364 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 364 | 
	a0 = xmem[i0]			# LN: 364 | 
	a0 = a0 << 4			# LN: 364 | 
	i0 = a0			# LN: 364 | 
	i1 = i7 - (0x20a)			# LN: 364 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 364 | 
	a0 = xmem[i1]			# LN: 364 | 
	a1 = i0			# LN: 364 | 
	a0 = a1 + a0			# LN: 364 | 
	AnyReg(i0, a0h)			# LN: 364 | 
	i1 = i7 - (0x20c)			# LN: 364 | 
	a0 = ymem[i0]			# LN: 364 | 
	xmem[i1] = a0h			# LN: 364 | 
cline_364_0:			/* LN: 365 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 365 | 
	i1 = i7 - (0x20c)			# LN: 365 | 
	a0 = xmem[i1]			# LN: 365 | 
	i0 = xmem[i0]			# LN: 365 | 
	call (_cl_wavwrite_sendsample)			# LN: 365 | 
cline_365_0:			/* LN: 362 | CYCLE: 0 | RULES: () */ 
init_latch_label_10:			/* LN: 366 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 362 | 
	a0 = xmem[i0]			# LN: 362 | 
	uhalfword(a1) = (0x1)			# LN: 362 | 
	a0 = a0 + a1			# LN: 362 | 
	i0 = i7 - (0x20b)			# LN: 362 | 
	xmem[i0] = a0h			# LN: 362 | 
	jmp (for_12)			# LN: 362 | 
for_end_12:			/* LN: 362 | CYCLE: 0 | RULES: () */ 
	jmp (endif_18)			# LN: 362 | 
cline_362_1:			/* LN: 369 | CYCLE: 0 | RULES: () */ 
else_18:			/* LN: 361 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 369 | 
	a0 = 0			# LN: 369 | 
	xmem[i0] = a0h			# LN: 369 | 
for_13:			/* LN: 369 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 369 | 
	a0 = xmem[i0]			# LN: 369 | 
	i0 = i7 - (0x104)			# LN: 369 | 
	a1 = xmem[i0]			# LN: 369 | 
	a0 - a1			# LN: 369 | 
	if (a >= 0) jmp (for_end_13)			# LN: 369 | 
cline_369_0:			/* LN: 371 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 371 | 
	a0 = xmem[i0]			# LN: 371 | 
	uhalfword(a1) = (0x2)			# LN: 371 | 
	a0 = a0 + a1			# LN: 371 | 
	a0 = a0 << 4			# LN: 371 | 
	i0 = a0			# LN: 371 | 
	i1 = i7 - (0x20a)			# LN: 371 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 371 | 
	a0 = xmem[i1]			# LN: 371 | 
	a1 = i0			# LN: 371 | 
	a0 = a1 + a0			# LN: 371 | 
	AnyReg(i0, a0h)			# LN: 371 | 
	i1 = i7 - (0x20c)			# LN: 371 | 
	a0 = ymem[i0]			# LN: 371 | 
	xmem[i1] = a0h			# LN: 371 | 
cline_371_0:			/* LN: 372 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 372 | 
	i1 = i7 - (0x20c)			# LN: 372 | 
	a0 = xmem[i1]			# LN: 372 | 
	i0 = xmem[i0]			# LN: 372 | 
	call (_cl_wavwrite_sendsample)			# LN: 372 | 
cline_372_0:			/* LN: 369 | CYCLE: 0 | RULES: () */ 
init_latch_label_11:			/* LN: 373 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 369 | 
	a0 = xmem[i0]			# LN: 369 | 
	uhalfword(a1) = (0x1)			# LN: 369 | 
	a0 = a0 + a1			# LN: 369 | 
	i0 = i7 - (0x20b)			# LN: 369 | 
	xmem[i0] = a0h			# LN: 369 | 
	jmp (for_13)			# LN: 369 | 
cline_369_1:			/* LN: 360 | CYCLE: 0 | RULES: () */ 
init_latch_label_12:			/* LN: 375 | CYCLE: 0 | RULES: () */ 
endif_18:			/* LN: 361 | CYCLE: 0 | RULES: () */ 
for_end_13:			/* LN: 369 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 360 | 
	a0 = xmem[i0]			# LN: 360 | 
	uhalfword(a1) = (0x1)			# LN: 360 | 
	a0 = a0 + a1			# LN: 360 | 
	i0 = i7 - (0x20a)			# LN: 360 | 
label_end_102:			# LN: 360 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 360 | 
cline_360_1:			/* LN: 347 | CYCLE: 0 | RULES: () */ 
init_latch_label_13:			/* LN: 376 | CYCLE: 0 | RULES: () */ 
for_end_11:			/* LN: 360 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 347 | 
	a0 = xmem[i0]			# LN: 347 | 
	uhalfword(a1) = (0x1)			# LN: 347 | 
	a0 = a0 + a1			# LN: 347 | 
	i0 = i7 - (0x209)			# LN: 347 | 
	xmem[i0] = a0h			# LN: 347 | 
	jmp (for_8)			# LN: 347 | 
cline_347_1:			/* LN: 381 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 347 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x103)			# LN: 381 | 
	i0 = xmem[i0]			# LN: 381 | 
	call (_cl_wavread_close)			# LN: 381 | 
cline_381_0:			/* LN: 382 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x208)			# LN: 382 | 
	i0 = xmem[i0]			# LN: 382 | 
	call (_cl_wavwrite_close)			# LN: 382 | 
cline_382_0:			/* LN: 385 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 385 | 
	jmp (__epilogue_226)			# LN: 385 | 
cline_385_0:			/* LN: 386 | CYCLE: 0 | RULES: () */ 
__epilogue_226:			/* LN: 386 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20c)			# LN: 386 | 
	i7 -= 1			# LN: 386 | 
	ret			# LN: 386 | 



_processing:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 165 | 
	i7 += 1			# LN: 165 | 
	i7 = i7 + (0x6)			# LN: 165 | 
cline_165_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 168 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 168 | 
	xmem[i0] = a0			# LN: 168 | 
cline_168_0:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 169 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 169 | 
	xmem[i0] = a0			# LN: 169 | 
cline_169_0:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 170 | 
	uhalfword(a0) = (_sampleBuffer + 32)			# LN: 170 | 
	xmem[i0] = a0			# LN: 170 | 
cline_170_0:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 171 | 
	uhalfword(a0) = (_sampleBuffer + 48)			# LN: 171 | 
	xmem[i0] = a0			# LN: 171 | 
cline_171_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 172 | 
	uhalfword(a0) = (_sampleBuffer + 64)			# LN: 172 | 
	xmem[i0] = a0			# LN: 172 | 
cline_172_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 174 | 
	a0 = 0			# LN: 174 | 
	xmem[i0] = a0h			# LN: 174 | 
	do (0x10), label_end_94			# LN: 174 | 
cline_174_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 175 | 
	i0 = xmem[i0]			# LN: 175 | 
	x0 = xmem[_gain_input + 0]			# LN: 175 | 
	x1 = ymem[i0]			# LN: 175 | 
	i0 = i7 - (0x1)			# LN: 175 | 
	i0 = xmem[i0]			# LN: 175 | 
	a0 = x1 * x0			# LN: 175 | 
	ymem[i0] = a0			# LN: 175 | 
cline_175_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 176 | 
	i0 = xmem[i0]			# LN: 176 | 
	i1 = i7 - (0x1)			# LN: 176 | 
	i0 += 1			# LN: 176 | 
	xmem[i1] = i0			# LN: 176 | 
cline_176_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 177 | 
	i0 = xmem[i0]			# LN: 177 | 
	x0 = xmem[_gain_input + 0]			# LN: 177 | 
	x1 = ymem[i0]			# LN: 177 | 
	i0 = i7 - (0x2)			# LN: 177 | 
	i0 = xmem[i0]			# LN: 177 | 
	a0 = x1 * x0			# LN: 177 | 
	ymem[i0] = a0			# LN: 177 | 
cline_177_0:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 178 | 
	i0 = xmem[i0]			# LN: 178 | 
	i1 = i7 - (0x2)			# LN: 178 | 
	i0 += 1			# LN: 178 | 
	xmem[i1] = i0			# LN: 178 | 
cline_178_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 174 | 
	a0 = xmem[i0]			# LN: 174 | 
	uhalfword(a1) = (0x1)			# LN: 174 | 
	a0 = a0 + a1			# LN: 174 | 
	i0 = i7 - (0x6)			# LN: 174 | 
label_end_94:			# LN: 174 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 174 | 
cline_174_1:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 180 | 
	i0 = xmem[i0]			# LN: 180 | 
	i1 = i7 - (0x1)			# LN: 180 | 
	i0 = i0 - (0x10)			# LN: 180 | 
	xmem[i1] = i0			# LN: 180 | 
cline_180_0:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 181 | 
	i0 = xmem[i0]			# LN: 181 | 
	i1 = i7 - (0x2)			# LN: 181 | 
	i0 = i0 - (0x10)			# LN: 181 | 
	xmem[i1] = i0			# LN: 181 | 
cline_181_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_working_mode + 0]			# LN: 182 | 
	a0 & a0			# LN: 182 | 
	if (a != 0) jmp (else_11)			# LN: 182 | 
cline_182_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 183 | 
	a0 = 0			# LN: 183 | 
	xmem[i0] = a0h			# LN: 183 | 
	do (0x10), label_end_95			# LN: 183 | 
cline_183_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 184 | 
	i0 = xmem[i0]			# LN: 184 | 
	i1 = i7 - (0x1)			# LN: 184 | 
	i1 = xmem[i1]			# LN: 184 | 
	a0 = ymem[i0]			# LN: 184 | 
	a1 = ymem[i1]			# LN: 184 | 
	i0 = i7 - (0x1)			# LN: 184 | 
	i0 = xmem[i0]			# LN: 184 | 
	a0 = a1 + a0			# LN: 184 | 
	ymem[i0] = a0h			# LN: 184 | 
cline_184_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 185 | 
	i0 = xmem[i0]			# LN: 185 | 
	x0 = xmem[_gain_headroom + 0]			# LN: 185 | 
	x1 = ymem[i0]			# LN: 185 | 
	i0 = i7 - (0x1)			# LN: 185 | 
	i0 = xmem[i0]			# LN: 185 | 
	a0 = x1 * x0			# LN: 185 | 
	ymem[i0] = a0			# LN: 185 | 
cline_185_0:			/* LN: 186 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 186 | 
	i0 = xmem[i0]			# LN: 186 | 
	x0 = xmem[_gain_6db + 0]			# LN: 186 | 
	x1 = ymem[i0]			# LN: 186 | 
	i0 = i7 - (0x1)			# LN: 186 | 
	i0 = xmem[i0]			# LN: 186 | 
	a0 = x1 * x0			# LN: 186 | 
	ymem[i0] = a0			# LN: 186 | 
cline_186_0:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 187 | 
	i0 = xmem[i0]			# LN: 187 | 
	i1 = i7 - (0x2)			# LN: 187 | 
	i1 = xmem[i1]			# LN: 187 | 
	a0 = ymem[i0]			# LN: 187 | 
	ymem[i1] = a0h			# LN: 187 | 
cline_187_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 188 | 
	i0 = xmem[i0]			# LN: 188 | 
	i1 = i7 - (0x1)			# LN: 188 | 
	i0 += 1			# LN: 188 | 
	xmem[i1] = i0			# LN: 188 | 
cline_188_0:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 189 | 
	i0 = xmem[i0]			# LN: 189 | 
	i1 = i7 - (0x2)			# LN: 189 | 
	i0 += 1			# LN: 189 | 
	xmem[i1] = i0			# LN: 189 | 
cline_189_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 183 | 
	a0 = xmem[i0]			# LN: 183 | 
	uhalfword(a1) = (0x1)			# LN: 183 | 
	a0 = a0 + a1			# LN: 183 | 
	i0 = i7 - (0x6)			# LN: 183 | 
label_end_95:			# LN: 183 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 183 | 
cline_183_1:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 191 | 
	i0 = xmem[i0]			# LN: 191 | 
	i1 = i7 - (0x1)			# LN: 191 | 
	i0 = i0 - (0x10)			# LN: 191 | 
	xmem[i1] = i0			# LN: 191 | 
cline_191_0:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 192 | 
	i0 = xmem[i0]			# LN: 192 | 
	i1 = i7 - (0x2)			# LN: 192 | 
	i0 = i0 - (0x10)			# LN: 192 | 
	xmem[i1] = i0			# LN: 192 | 
	jmp (endif_11)			# LN: 192 | 
cline_192_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_working_mode + 0]			# LN: 195 | 
	uhalfword(a1) = (0x1)			# LN: 195 | 
	a0 - a1			# LN: 195 | 
	if (a != 0) jmp (else_12)			# LN: 195 | 
cline_195_0:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 197 | 
	a0 = 0			# LN: 197 | 
	xmem[i0] = a0h			# LN: 197 | 
	do (0x10), label_end_96			# LN: 197 | 
cline_197_0:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 198 | 
	i0 = xmem[i0]			# LN: 198 | 
	i1 = i7 - (0x4)			# LN: 198 | 
	i1 = xmem[i1]			# LN: 198 | 
	a0 = ymem[i0]			# LN: 198 | 
	ymem[i1] = a0h			# LN: 198 | 
cline_198_0:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 200 | 
	i0 = xmem[i0]			# LN: 200 | 
	i1 = i7 - (0x1)			# LN: 200 | 
	i1 = xmem[i1]			# LN: 200 | 
	a0 = ymem[i0]			# LN: 200 | 
	a1 = ymem[i1]			# LN: 200 | 
	i0 = i7 - (0x1)			# LN: 200 | 
	i0 = xmem[i0]			# LN: 200 | 
	a0 = a1 + a0			# LN: 200 | 
	ymem[i0] = a0h			# LN: 200 | 
cline_200_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 201 | 
	i0 = xmem[i0]			# LN: 201 | 
	x0 = xmem[_gain_headroom + 0]			# LN: 201 | 
	x1 = ymem[i0]			# LN: 201 | 
	i0 = i7 - (0x1)			# LN: 201 | 
	i0 = xmem[i0]			# LN: 201 | 
	a0 = x1 * x0			# LN: 201 | 
	ymem[i0] = a0			# LN: 201 | 
cline_201_0:			/* LN: 202 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 202 | 
	i0 = xmem[i0]			# LN: 202 | 
	x0 = xmem[_gain_6db + 0]			# LN: 202 | 
	x1 = ymem[i0]			# LN: 202 | 
	i0 = i7 - (0x1)			# LN: 202 | 
	i0 = xmem[i0]			# LN: 202 | 
	a0 = x1 * x0			# LN: 202 | 
	ymem[i0] = a0			# LN: 202 | 
cline_202_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 203 | 
	i0 = xmem[i0]			# LN: 203 | 
	i1 = i7 - (0x5)			# LN: 203 | 
	i1 = xmem[i1]			# LN: 203 | 
	a0 = ymem[i0]			# LN: 203 | 
	ymem[i1] = a0h			# LN: 203 | 
cline_203_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 205 | 
	i0 = xmem[i0]			# LN: 205 | 
	i1 = i7 - (0x2)			# LN: 205 | 
	i1 = xmem[i1]			# LN: 205 | 
	a0 = ymem[i0]			# LN: 205 | 
	ymem[i1] = a0h			# LN: 205 | 
cline_205_0:			/* LN: 206 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 206 | 
	i0 = xmem[i0]			# LN: 206 | 
	i1 = i7 - (0x1)			# LN: 206 | 
	i0 += 1			# LN: 206 | 
	xmem[i1] = i0			# LN: 206 | 
cline_206_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 207 | 
	i0 = xmem[i0]			# LN: 207 | 
	i1 = i7 - (0x2)			# LN: 207 | 
	i0 += 1			# LN: 207 | 
	xmem[i1] = i0			# LN: 207 | 
cline_207_0:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 208 | 
	i0 = xmem[i0]			# LN: 208 | 
	i1 = i7 - (0x4)			# LN: 208 | 
	i0 += 1			# LN: 208 | 
	xmem[i1] = i0			# LN: 208 | 
cline_208_0:			/* LN: 209 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 209 | 
	i0 = xmem[i0]			# LN: 209 | 
	i1 = i7 - (0x5)			# LN: 209 | 
	i0 += 1			# LN: 209 | 
	xmem[i1] = i0			# LN: 209 | 
cline_209_0:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 210 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 197 | 
	a0 = xmem[i0]			# LN: 197 | 
	uhalfword(a1) = (0x1)			# LN: 197 | 
	a0 = a0 + a1			# LN: 197 | 
	i0 = i7 - (0x6)			# LN: 197 | 
label_end_96:			# LN: 197 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 197 | 
cline_197_1:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 211 | 
	i0 = xmem[i0]			# LN: 211 | 
	i1 = i7 - (0x1)			# LN: 211 | 
	i0 = i0 - (0x10)			# LN: 211 | 
	xmem[i1] = i0			# LN: 211 | 
cline_211_0:			/* LN: 212 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 212 | 
	i0 = xmem[i0]			# LN: 212 | 
	i1 = i7 - (0x2)			# LN: 212 | 
	i0 = i0 - (0x10)			# LN: 212 | 
	xmem[i1] = i0			# LN: 212 | 
cline_212_0:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 213 | 
	i0 = xmem[i0]			# LN: 213 | 
	i1 = i7 - (0x4)			# LN: 213 | 
	i0 = i0 - (0x10)			# LN: 213 | 
	xmem[i1] = i0			# LN: 213 | 
cline_213_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 214 | 
	i0 = xmem[i0]			# LN: 214 | 
	i1 = i7 - (0x5)			# LN: 214 | 
	i0 = i0 - (0x10)			# LN: 214 | 
	xmem[i1] = i0			# LN: 214 | 
cline_214_0:			/* LN: 216 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 216 | 
	i0 = xmem[i0]			# LN: 216 | 
	call (_gst_audio_dynamic_transform_expander_float)			# LN: 216 | 
cline_216_0:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 217 | 
	i0 = xmem[i0]			# LN: 217 | 
	call (_gst_audio_dynamic_transform_expander_float)			# LN: 217 | 
cline_217_0:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 219 | 
	a0 = 0			# LN: 219 | 
	xmem[i0] = a0h			# LN: 219 | 
	do (0x10), label_end_97			# LN: 219 | 
cline_219_0:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 220 | 
	i0 = xmem[i0]			# LN: 220 | 
	x0 = xmem[_gain_2db + 0]			# LN: 220 | 
	x1 = ymem[i0]			# LN: 220 | 
	i0 = i7 - (0x4)			# LN: 220 | 
	i0 = xmem[i0]			# LN: 220 | 
	a0 = x1 * x0			# LN: 220 | 
	ymem[i0] = a0			# LN: 220 | 
cline_220_0:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 221 | 
	i0 = xmem[i0]			# LN: 221 | 
	x0 = xmem[_gain_2db + 0]			# LN: 221 | 
	x1 = ymem[i0]			# LN: 221 | 
	i0 = i7 - (0x5)			# LN: 221 | 
	i0 = xmem[i0]			# LN: 221 | 
	a0 = x1 * x0			# LN: 221 | 
	ymem[i0] = a0			# LN: 221 | 
cline_221_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 223 | 
	i0 = xmem[i0]			# LN: 223 | 
	i1 = i7 - (0x4)			# LN: 223 | 
	i1 = xmem[i1]			# LN: 223 | 
	a0 = ymem[i0]			# LN: 223 | 
	a1 = ymem[i1]			# LN: 223 | 
	i0 = i7 - (0x4)			# LN: 223 | 
	i0 = xmem[i0]			# LN: 223 | 
	a0 = a1 + a0			# LN: 223 | 
	ymem[i0] = a0h			# LN: 223 | 
cline_223_0:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 224 | 
	i0 = xmem[i0]			# LN: 224 | 
	i1 = i7 - (0x5)			# LN: 224 | 
	i1 = xmem[i1]			# LN: 224 | 
	a0 = ymem[i0]			# LN: 224 | 
	a1 = ymem[i1]			# LN: 224 | 
	i0 = i7 - (0x5)			# LN: 224 | 
	i0 = xmem[i0]			# LN: 224 | 
	a0 = a1 + a0			# LN: 224 | 
	ymem[i0] = a0h			# LN: 224 | 
cline_224_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 226 | 
	i0 = xmem[i0]			# LN: 226 | 
	i1 = i7 - (0x1)			# LN: 226 | 
	i0 += 1			# LN: 226 | 
	xmem[i1] = i0			# LN: 226 | 
cline_226_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 227 | 
	i0 = xmem[i0]			# LN: 227 | 
	i1 = i7 - (0x2)			# LN: 227 | 
	i0 += 1			# LN: 227 | 
	xmem[i1] = i0			# LN: 227 | 
cline_227_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 228 | 
	i0 = xmem[i0]			# LN: 228 | 
	i1 = i7 - (0x4)			# LN: 228 | 
	i0 += 1			# LN: 228 | 
	xmem[i1] = i0			# LN: 228 | 
cline_228_0:			/* LN: 229 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 229 | 
	i0 = xmem[i0]			# LN: 229 | 
	i1 = i7 - (0x5)			# LN: 229 | 
	i0 += 1			# LN: 229 | 
	xmem[i1] = i0			# LN: 229 | 
cline_229_0:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 219 | 
	a0 = xmem[i0]			# LN: 219 | 
	uhalfword(a1) = (0x1)			# LN: 219 | 
	a0 = a0 + a1			# LN: 219 | 
	i0 = i7 - (0x6)			# LN: 219 | 
label_end_97:			# LN: 219 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 219 | 
cline_219_1:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 231 | 
	i0 = xmem[i0]			# LN: 231 | 
	i1 = i7 - (0x1)			# LN: 231 | 
	i0 = i0 - (0x10)			# LN: 231 | 
	xmem[i1] = i0			# LN: 231 | 
cline_231_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 232 | 
	i0 = xmem[i0]			# LN: 232 | 
	i1 = i7 - (0x2)			# LN: 232 | 
	i0 = i0 - (0x10)			# LN: 232 | 
	xmem[i1] = i0			# LN: 232 | 
cline_232_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 233 | 
	i0 = xmem[i0]			# LN: 233 | 
	i1 = i7 - (0x4)			# LN: 233 | 
	i0 = i0 - (0x10)			# LN: 233 | 
	xmem[i1] = i0			# LN: 233 | 
cline_233_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 234 | 
	i0 = xmem[i0]			# LN: 234 | 
	i1 = i7 - (0x5)			# LN: 234 | 
	i0 = i0 - (0x10)			# LN: 234 | 
	xmem[i1] = i0			# LN: 234 | 
	jmp (endif_12)			# LN: 234 | 
cline_234_0:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
endif_12:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
else_12:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_working_mode + 0]			# LN: 238 | 
	uhalfword(a1) = (0x2)			# LN: 238 | 
	a0 - a1			# LN: 238 | 
	if (a != 0) jmp (else_13)			# LN: 238 | 
cline_238_0:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 240 | 
	a0 = 0			# LN: 240 | 
	xmem[i0] = a0h			# LN: 240 | 
	do (0x10), label_end_98			# LN: 240 | 
cline_240_0:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
label_begin_98:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 241 | 
	i0 = xmem[i0]			# LN: 241 | 
	i1 = i7 - (0x4)			# LN: 241 | 
	i1 = xmem[i1]			# LN: 241 | 
	a0 = ymem[i0]			# LN: 241 | 
	ymem[i1] = a0h			# LN: 241 | 
cline_241_0:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 243 | 
	i0 = xmem[i0]			# LN: 243 | 
	i1 = i7 - (0x1)			# LN: 243 | 
	i1 = xmem[i1]			# LN: 243 | 
	a0 = ymem[i0]			# LN: 243 | 
	a1 = ymem[i1]			# LN: 243 | 
	i0 = i7 - (0x1)			# LN: 243 | 
	i0 = xmem[i0]			# LN: 243 | 
	a0 = a1 + a0			# LN: 243 | 
	ymem[i0] = a0h			# LN: 243 | 
cline_243_0:			/* LN: 244 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 244 | 
	i0 = xmem[i0]			# LN: 244 | 
	x0 = xmem[_gain_headroom + 0]			# LN: 244 | 
	x1 = ymem[i0]			# LN: 244 | 
	i0 = i7 - (0x3)			# LN: 244 | 
	i0 = xmem[i0]			# LN: 244 | 
	a0 = x1 * x0			# LN: 244 | 
	ymem[i0] = a0			# LN: 244 | 
cline_244_0:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 245 | 
	i0 = xmem[i0]			# LN: 245 | 
	x0 = xmem[_gain_headroom + 0]			# LN: 245 | 
	x1 = ymem[i0]			# LN: 245 | 
	i0 = i7 - (0x1)			# LN: 245 | 
	i0 = xmem[i0]			# LN: 245 | 
	a0 = x1 * x0			# LN: 245 | 
	ymem[i0] = a0			# LN: 245 | 
cline_245_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 246 | 
	i0 = xmem[i0]			# LN: 246 | 
	x0 = xmem[_gain_6db + 0]			# LN: 246 | 
	x1 = ymem[i0]			# LN: 246 | 
	i0 = i7 - (0x1)			# LN: 246 | 
	i0 = xmem[i0]			# LN: 246 | 
	a0 = x1 * x0			# LN: 246 | 
	ymem[i0] = a0			# LN: 246 | 
cline_246_0:			/* LN: 247 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 247 | 
	i0 = xmem[i0]			# LN: 247 | 
	i1 = i7 - (0x5)			# LN: 247 | 
	i1 = xmem[i1]			# LN: 247 | 
	a0 = ymem[i0]			# LN: 247 | 
	ymem[i1] = a0h			# LN: 247 | 
cline_247_0:			/* LN: 249 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 249 | 
	i0 = xmem[i0]			# LN: 249 | 
	i1 = i7 - (0x2)			# LN: 249 | 
	i1 = xmem[i1]			# LN: 249 | 
	a0 = ymem[i0]			# LN: 249 | 
	ymem[i1] = a0h			# LN: 249 | 
cline_249_0:			/* LN: 251 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 251 | 
	i0 = xmem[i0]			# LN: 251 | 
	i1 = i7 - (0x1)			# LN: 251 | 
	i0 += 1			# LN: 251 | 
	xmem[i1] = i0			# LN: 251 | 
cline_251_0:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 252 | 
	i0 = xmem[i0]			# LN: 252 | 
	i1 = i7 - (0x2)			# LN: 252 | 
	i0 += 1			# LN: 252 | 
	xmem[i1] = i0			# LN: 252 | 
cline_252_0:			/* LN: 253 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 253 | 
	i0 = xmem[i0]			# LN: 253 | 
	i1 = i7 - (0x3)			# LN: 253 | 
	i0 += 1			# LN: 253 | 
	xmem[i1] = i0			# LN: 253 | 
cline_253_0:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 254 | 
	i0 = xmem[i0]			# LN: 254 | 
	i1 = i7 - (0x5)			# LN: 254 | 
	i0 += 1			# LN: 254 | 
	xmem[i1] = i0			# LN: 254 | 
cline_254_0:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 255 | 
	i0 = xmem[i0]			# LN: 255 | 
	i1 = i7 - (0x4)			# LN: 255 | 
	i0 += 1			# LN: 255 | 
	xmem[i1] = i0			# LN: 255 | 
cline_255_0:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 240 | 
	a0 = xmem[i0]			# LN: 240 | 
	uhalfword(a1) = (0x1)			# LN: 240 | 
	a0 = a0 + a1			# LN: 240 | 
	i0 = i7 - (0x6)			# LN: 240 | 
label_end_98:			# LN: 240 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 240 | 
cline_240_1:			/* LN: 257 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 257 | 
	i0 = xmem[i0]			# LN: 257 | 
	i1 = i7 - (0x1)			# LN: 257 | 
	i0 = i0 - (0x10)			# LN: 257 | 
	xmem[i1] = i0			# LN: 257 | 
cline_257_0:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 258 | 
	i0 = xmem[i0]			# LN: 258 | 
	i1 = i7 - (0x2)			# LN: 258 | 
	i0 = i0 - (0x10)			# LN: 258 | 
	xmem[i1] = i0			# LN: 258 | 
cline_258_0:			/* LN: 259 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 259 | 
	i0 = xmem[i0]			# LN: 259 | 
	i1 = i7 - (0x3)			# LN: 259 | 
	i0 = i0 - (0x10)			# LN: 259 | 
	xmem[i1] = i0			# LN: 259 | 
cline_259_0:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 260 | 
	i0 = xmem[i0]			# LN: 260 | 
	i1 = i7 - (0x5)			# LN: 260 | 
	i0 = i0 - (0x10)			# LN: 260 | 
	xmem[i1] = i0			# LN: 260 | 
cline_260_0:			/* LN: 261 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 261 | 
	i0 = xmem[i0]			# LN: 261 | 
	i1 = i7 - (0x4)			# LN: 261 | 
	i0 = i0 - (0x10)			# LN: 261 | 
	xmem[i1] = i0			# LN: 261 | 
cline_261_0:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 263 | 
	i0 = xmem[i0]			# LN: 263 | 
	call (_gst_audio_dynamic_transform_expander_float)			# LN: 263 | 
cline_263_0:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 264 | 
	i0 = xmem[i0]			# LN: 264 | 
	call (_gst_audio_dynamic_transform_expander_float)			# LN: 264 | 
cline_264_0:			/* LN: 266 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 266 | 
	a0 = 0			# LN: 266 | 
	xmem[i0] = a0h			# LN: 266 | 
	do (0x10), label_end_99			# LN: 266 | 
cline_266_0:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
label_begin_99:			/* LN: 266 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 267 | 
	i0 = xmem[i0]			# LN: 267 | 
	x0 = xmem[_gain_2db + 0]			# LN: 267 | 
	x1 = ymem[i0]			# LN: 267 | 
	i0 = i7 - (0x4)			# LN: 267 | 
	i0 = xmem[i0]			# LN: 267 | 
	a0 = x1 * x0			# LN: 267 | 
	ymem[i0] = a0			# LN: 267 | 
cline_267_0:			/* LN: 268 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 268 | 
	i0 = xmem[i0]			# LN: 268 | 
	x0 = xmem[_gain_2db + 0]			# LN: 268 | 
	x1 = ymem[i0]			# LN: 268 | 
	i0 = i7 - (0x5)			# LN: 268 | 
	i0 = xmem[i0]			# LN: 268 | 
	a0 = x1 * x0			# LN: 268 | 
	ymem[i0] = a0			# LN: 268 | 
cline_268_0:			/* LN: 270 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 270 | 
	i0 = xmem[i0]			# LN: 270 | 
	i1 = i7 - (0x4)			# LN: 270 | 
	i1 = xmem[i1]			# LN: 270 | 
	a0 = ymem[i0]			# LN: 270 | 
	a1 = ymem[i1]			# LN: 270 | 
	i0 = i7 - (0x4)			# LN: 270 | 
	i0 = xmem[i0]			# LN: 270 | 
	a0 = a1 + a0			# LN: 270 | 
	ymem[i0] = a0h			# LN: 270 | 
cline_270_0:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 271 | 
	i0 = xmem[i0]			# LN: 271 | 
	i1 = i7 - (0x5)			# LN: 271 | 
	i1 = xmem[i1]			# LN: 271 | 
	a0 = ymem[i0]			# LN: 271 | 
	a1 = ymem[i1]			# LN: 271 | 
	i0 = i7 - (0x5)			# LN: 271 | 
	i0 = xmem[i0]			# LN: 271 | 
	a0 = a1 + a0			# LN: 271 | 
	ymem[i0] = a0h			# LN: 271 | 
cline_271_0:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 273 | 
	i0 = xmem[i0]			# LN: 273 | 
	i1 = i7 - (0x1)			# LN: 273 | 
	i0 += 1			# LN: 273 | 
	xmem[i1] = i0			# LN: 273 | 
cline_273_0:			/* LN: 274 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 274 | 
	i0 = xmem[i0]			# LN: 274 | 
	i1 = i7 - (0x2)			# LN: 274 | 
	i0 += 1			# LN: 274 | 
	xmem[i1] = i0			# LN: 274 | 
cline_274_0:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 275 | 
	i0 = xmem[i0]			# LN: 275 | 
	i1 = i7 - (0x5)			# LN: 275 | 
	i0 += 1			# LN: 275 | 
	xmem[i1] = i0			# LN: 275 | 
cline_275_0:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 276 | 
	i0 = xmem[i0]			# LN: 276 | 
	i1 = i7 - (0x4)			# LN: 276 | 
	i0 += 1			# LN: 276 | 
	xmem[i1] = i0			# LN: 276 | 
cline_276_0:			/* LN: 266 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 266 | 
	a0 = xmem[i0]			# LN: 266 | 
	uhalfword(a1) = (0x1)			# LN: 266 | 
	a0 = a0 + a1			# LN: 266 | 
	i0 = i7 - (0x6)			# LN: 266 | 
label_end_99:			# LN: 266 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 266 | 
cline_266_1:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 266 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 278 | 
	i0 = xmem[i0]			# LN: 278 | 
	i1 = i7 - (0x1)			# LN: 278 | 
	i0 = i0 - (0x10)			# LN: 278 | 
	xmem[i1] = i0			# LN: 278 | 
cline_278_0:			/* LN: 279 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 279 | 
	i0 = xmem[i0]			# LN: 279 | 
	i1 = i7 - (0x2)			# LN: 279 | 
	i0 = i0 - (0x10)			# LN: 279 | 
	xmem[i1] = i0			# LN: 279 | 
cline_279_0:			/* LN: 280 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 280 | 
	i0 = xmem[i0]			# LN: 280 | 
	i1 = i7 - (0x5)			# LN: 280 | 
	i0 = i0 - (0x10)			# LN: 280 | 
	xmem[i1] = i0			# LN: 280 | 
cline_280_0:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 281 | 
	i0 = xmem[i0]			# LN: 281 | 
	i1 = i7 - (0x4)			# LN: 281 | 
	i0 = i0 - (0x10)			# LN: 281 | 
	xmem[i1] = i0			# LN: 281 | 
	jmp (endif_13)			# LN: 281 | 
cline_281_0:			/* LN: 286 | CYCLE: 0 | RULES: () */ 
endif_13:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
else_13:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_224)			# LN: 286 | 
__epilogue_224:			/* LN: 286 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x6)			# LN: 286 | 
	i7 -= 1			# LN: 286 | 
	ret			# LN: 286 | 
