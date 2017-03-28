#if defined(__arm__)
.text
	.align 3
methods:
	.space 16
	.align 2
Lm_0:
m_CreditsGUI__ctor:
_m_0:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_1

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_0:
	.align 2
Lm_1:
m_CreditsGUI_OnClickReturnToMenu:
_m_1:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . -4
	.byte 0,0,159,231
bl p_2

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1:
	.align 2
Lm_2:
m_GameScript__ctor:
_m_2:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - .
	.byte 0,0,159,231,0,0,144,229,0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 4
	.byte 1,16,159,231,0,16,145,229,145,0,0,224,2,16,160,227
bl p_3

	.byte 0,16,160,225,0,0,155,229,44,16,128,229
bl p_1

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_2:
	.align 2
Lm_3:
m_GameScript_Awake:
_m_3:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
	.byte 12,16,144,229,1,0,160,225,0,224,145,229
bl p_4

	.byte 0,32,160,225,0,16,160,227,0,224,146,229
bl p_5

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_3:
	.align 2
Lm_4:
m_GameScript_Start:
_m_4:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,112,93,45,233,16,208,77,226,13,176,160,225,0,160,160,225,20,32,154,229
	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 8
	.byte 1,16,159,231,2,0,160,225,0,32,146,229,15,224,160,225,100,241,146,229,1,0,160,227,52,0,202,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 12
	.byte 0,0,159,231
bl p_6

	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 16
	.byte 1,16,159,231,0,16,145,229,8,16,128,229,24,0,138,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 4
	.byte 0,0,159,231,0,16,144,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - .
	.byte 0,0,159,231,0,32,144,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 20
	.byte 0,0,159,231
bl p_7

	.byte 28,0,138,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 12
	.byte 0,0,159,231
bl p_6

	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 16
	.byte 1,16,159,231,0,16,145,229,8,16,128,229,32,0,138,229,10,0,160,225
bl p_8

	.byte 0,64,160,227,53,0,0,234,0,96,160,227,43,0,0,234,24,0,154,229,0,16,160,225,0,224,145,229,12,16,144,229
	.byte 0,0,160,227
bl p_9

	.byte 0,80,160,225,28,0,154,229,8,0,139,229,24,32,154,229,2,0,160,225,5,16,160,225,0,224,146,229
bl p_10

	.byte 0,16,160,225,8,0,155,229,4,0,139,229,0,16,139,229
bl p_11

	.byte 0,16,155,229,4,32,155,229,8,0,146,229,4,48,144,229,3,192,68,224,0,48,144,229,12,0,83,225,35,0,0,155
	.byte 12,48,144,229,3,48,70,224,8,0,144,229,3,0,80,225,30,0,0,155,156,0,0,224,3,0,128,224,0,1,160,225
	.byte 2,0,128,224,16,0,128,226,0,16,128,229,24,32,154,229,2,0,160,225,5,16,160,225,0,224,146,229
bl p_12

	.byte 1,96,134,226,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - .
	.byte 0,0,159,231,0,0,144,229,0,0,86,225,204,255,255,186,1,64,132,226,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 4
	.byte 0,0,159,231,0,0,144,229,0,0,84,225,194,255,255,186,16,208,139,226,112,13,189,232,8,112,157,229,0,160,157,232
	.byte 14,16,160,225,0,0,159,229
bl p_13

	.byte 120,6,0,2

Lme_4:
	.align 2
Lm_5:
m_GameScript_OnGUI:
_m_5:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,93,45,233,76,208,77,226,13,176,160,225,0,160,160,225,0,42,159,237
	.byte 0,0,0,234,0,0,0,0,194,42,183,238,16,43,139,237,0,42,159,237,0,0,0,234,0,0,0,0,194,42,183,238
	.byte 14,43,139,237
bl p_14

	.byte 16,10,0,238,192,10,184,238,192,42,183,238,12,43,139,237
bl p_15

	.byte 12,59,155,237,14,75,155,237,16,91,155,237,16,10,0,238,192,10,184,238,192,42,183,238,0,0,160,227,16,0,139,229
	.byte 0,0,160,227,20,0,139,229,0,0,160,227,24,0,139,229,0,0,160,227,28,0,139,229,16,0,139,226,197,11,183,238
	.byte 2,10,13,237,8,16,29,229,196,11,183,238,2,10,13,237,8,32,29,229,195,11,183,238,2,10,13,237,8,48,29,229
	.byte 194,11,183,238,0,10,141,237
bl p_16

	.byte 16,0,155,229,32,0,139,229,20,0,155,229,36,0,139,229,24,0,155,229,40,0,139,229,28,0,155,229,44,0,139,229
	.byte 32,0,155,229,36,16,155,229,40,32,155,229,44,48,155,229
bl p_17

	.byte 10,0,160,225
bl p_18
bl p_19

	.byte 53,0,218,229,0,0,80,227,16,0,0,10,20,32,154,229,0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 24
	.byte 1,16,159,231,2,0,160,225,0,32,146,229,15,224,160,225,100,241,146,229,12,16,154,229,1,0,160,225,0,224,145,229
bl p_4

	.byte 0,32,160,225,1,16,160,227,0,224,146,229
bl p_5

	.byte 76,208,139,226,0,13,189,232,8,112,157,229,0,160,157,232

Lme_5:
	.align 2
Lm_6:
m_GameScript_BuildGrid:
_m_6:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,112,93,45,233,40,208,77,226,13,176,160,225,0,160,160,225,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 28
	.byte 0,0,159,231,0,16,160,227
bl p_20
bl p_21
bl p_22

	.byte 0,0,160,227,8,0,139,229,166,0,0,234,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 28
	.byte 0,0,159,231,0,16,160,227
bl p_20
bl p_23
bl p_22

	.byte 0,96,160,227,144,0,0,234,28,16,154,229,8,0,145,229,4,48,144,229,8,32,155,229,3,48,66,224,0,32,144,229
	.byte 3,0,82,225,166,0,0,155,12,32,144,229,2,32,70,224,8,0,144,229,2,0,80,225,161,0,0,155,147,0,0,224
	.byte 2,0,128,224,0,1,160,225,1,0,128,224,16,0,128,226,0,80,144,229,5,0,160,225,13,0,208,229,0,0,80,227
	.byte 4,0,0,10,0,64,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 32
	.byte 4,64,159,231,8,0,0,234,12,0,213,229,0,0,80,227,1,0,0,10,8,64,149,229,3,0,0,234,0,64,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 36
	.byte 4,64,159,231,13,0,213,229,0,0,80,227,0,0,160,19,1,0,160,3
bl p_24
bl p_14

	.byte 16,10,0,238,192,10,184,238,192,42,183,238,0,58,159,237,0,0,0,234,102,102,102,63,195,58,183,238,3,43,34,238
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 4
	.byte 0,0,159,231,0,0,144,229,16,10,0,238,192,10,184,238,192,74,183,238,66,59,176,238,4,59,131,238,0,42,159,237
	.byte 0,0,0,234,0,0,150,67,194,42,183,238,195,11,183,238,2,10,13,237,8,0,29,229,194,11,183,238,2,10,13,237
	.byte 8,16,29,229
bl p_25

	.byte 16,10,2,238,194,42,183,238,194,11,189,238,16,10,16,238,12,0,139,229,4,0,160,225
bl p_26

	.byte 16,0,139,229,0,0,80,227,10,0,0,10,16,0,155,229,0,0,144,229,0,0,144,229,8,0,144,229,8,0,144,229
	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 40
	.byte 1,16,159,231,1,0,80,225,77,0,0,27,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 28
	.byte 0,0,159,231,2,16,160,227
bl p_20

	.byte 36,0,139,229,32,0,139,229,12,0,155,229,16,10,0,238,192,10,184,238,192,42,183,238,194,11,183,238,2,10,13,237
	.byte 8,0,29,229
bl p_27

	.byte 0,32,160,225,36,0,155,229,0,16,160,227
bl p_28

	.byte 32,0,155,229,28,0,139,229,24,0,139,229,12,0,155,229,16,10,0,238,192,10,184,238,192,42,183,238,194,11,183,238
	.byte 2,10,13,237,8,0,29,229
bl p_29

	.byte 0,32,160,225,28,0,155,229,1,16,160,227
bl p_28

	.byte 24,16,155,229,16,0,155,229
bl p_30

	.byte 0,0,80,227,8,0,0,10,52,0,218,229,0,0,80,227,5,0,0,10,10,0,160,225,5,16,160,225
bl p_31

	.byte 0,16,160,225,10,0,160,225
bl p_32

	.byte 1,0,160,227
bl p_24

	.byte 1,96,134,226,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - .
	.byte 0,0,159,231,0,0,144,229,0,0,86,225,103,255,255,186
bl p_22
bl p_33

	.byte 8,0,155,229,1,0,128,226,8,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 4
	.byte 0,0,159,231,0,16,144,229,8,0,155,229,1,0,80,225,80,255,255,186
bl p_22
bl p_34

	.byte 40,208,139,226,112,13,189,232,8,112,157,229,0,160,157,232,14,16,160,225,0,0,159,229
bl p_13

	.byte 122,6,0,2,14,16,160,225,0,0,159,229
bl p_13

	.byte 120,6,0,2

Lme_6:
	.align 2
Lm_7:
m_GameScript_BuildDeck:
_m_7:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,112,93,45,233,40,208,77,226,13,176,160,225,8,0,139,229,0,0,160,227
	.byte 0,0,139,229,0,160,160,227,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 44
	.byte 0,0,159,231
bl p_6

	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 48
	.byte 1,16,159,231,0,16,145,229,8,16,128,229,0,96,160,225,0,0,160,227,0,0,139,229,8,0,0,234,11,0,160,225
bl p_35

	.byte 0,16,160,225,6,0,160,225,0,224,150,229
bl p_36

	.byte 0,0,155,229,1,0,128,226,0,0,139,229,0,0,155,229,12,0,80,227,243,255,255,186,0,0,160,227,4,0,139,229
	.byte 73,0,0,234,0,224,150,229,12,16,150,229,0,0,160,227
bl p_9

	.byte 0,80,160,225,6,0,160,225,5,16,160,225,0,224,150,229
bl p_37

	.byte 0,64,160,225,6,0,160,225,5,16,160,225,0,224,150,229
bl p_38

	.byte 8,0,155,229,24,0,144,229,32,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 52
	.byte 0,0,159,231,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 56
	.byte 2,32,159,231,4,16,160,225
bl p_39

	.byte 36,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 60
	.byte 0,0,159,231
bl p_6

	.byte 36,16,155,229,28,0,139,229,10,32,160,225
bl _m_a

	.byte 28,16,155,229,32,32,155,229,2,0,160,225,0,224,146,229
bl p_40

	.byte 8,0,155,229,24,0,144,229,20,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 52
	.byte 0,0,159,231,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 64
	.byte 2,32,159,231,4,16,160,225
bl p_39

	.byte 24,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 60
	.byte 0,0,159,231
bl p_6

	.byte 24,16,155,229,16,0,139,229,10,32,160,225
bl _m_a

	.byte 16,16,155,229,20,32,155,229,2,0,160,225,0,224,146,229
bl p_40

	.byte 1,160,138,226,4,0,155,229,1,0,128,226,4,0,139,229,8,0,155,229,44,16,144,229,4,0,155,229,1,0,80,225
	.byte 176,255,255,186,40,208,139,226,112,13,189,232,8,112,157,229,0,160,157,232

Lme_7:
	.align 2
Lm_8:
m_GameScript_FlipCardFaceUp_Card:
_m_8:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 68
	.byte 0,0,159,231
bl p_6

	.byte 4,16,155,229,8,16,128,229,0,16,155,229,12,16,128,229,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_8:
	.align 2
Lm_9:
m_GameScript__cctor:
_m_9:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,13,176,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - .
	.byte 0,0,159,231,4,16,160,227,0,16,128,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 4
	.byte 0,0,159,231,4,16,160,227,0,16,128,229,0,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_9:
	.align 2
Lm_a:
m_Card__ctor_string_int:
_m_a:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,16,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 8,32,139,229,4,16,155,229,0,0,155,229,8,16,128,229,8,16,155,229,16,16,128,229,16,208,139,226,0,9,189,232
	.byte 8,112,157,229,0,160,157,232

Lme_a:
	.align 2
Lm_b:
m_TitleGUI__ctor:
_m_b:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_1

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_b:
	.align 2
Lm_c:
m_TitleGUI_OnClickPlay:
_m_c:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 72
	.byte 0,0,159,231
bl p_2

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_c:
	.align 2
Lm_d:
m_TitleGUI_OnClickViewCredits:
_m_d:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 76
	.byte 0,0,159,231
bl p_2

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_d:
	.align 2
Lm_e:
m_GameScript__FlipCardFaceUpc__Iterator0__ctor:
_m_e:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,8,208,139,226
	.byte 0,9,189,232,8,112,157,229,0,160,157,232

Lme_e:
	.align 2
Lm_f:
m_GameScript__FlipCardFaceUpc__Iterator0_MoveNext:
_m_f:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,93,45,233,44,208,77,226,13,176,160,225,0,160,160,225,24,0,154,229
	.byte 0,16,224,227,24,16,138,229,16,0,139,229,2,0,80,227,186,0,0,42,16,0,155,229,0,17,160,225,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 80
	.byte 0,0,159,231,1,0,128,224,0,0,144,229,0,240,160,225,8,0,154,229,1,16,160,227,12,16,192,229,12,0,154,229
	.byte 32,32,144,229,8,16,154,229,2,0,160,225,0,224,146,229
bl p_41

	.byte 0,0,80,227,164,0,0,170,12,0,154,229,32,32,144,229,8,16,154,229,2,0,160,225,0,224,146,229
bl p_40

	.byte 12,0,154,229,32,0,144,229,0,16,160,225,0,224,145,229,12,0,144,229,2,0,80,227,151,0,0,26,12,0,154,229
	.byte 0,16,160,227,52,16,192,229,0,42,159,237,0,0,0,234,0,0,128,63,194,42,183,238,6,43,139,237,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 84
	.byte 0,0,159,231
bl p_42

	.byte 6,43,155,237,194,11,183,238,1,10,139,237,1,10,155,237,192,42,183,238,194,11,183,238,2,10,128,237,16,0,138,229
	.byte 20,0,218,229,0,0,80,227,131,0,0,26,1,0,160,227,24,0,138,229,128,0,0,234,12,0,154,229,32,32,144,229
	.byte 2,0,160,225,0,16,160,227,0,224,146,229
bl p_10

	.byte 16,0,144,229,32,0,139,229,12,0,154,229,32,32,144,229,2,0,160,225,1,16,160,227,0,224,146,229
bl p_10

	.byte 0,16,160,225,32,0,155,229,16,16,145,229,1,0,80,225,70,0,0,26,12,0,154,229,32,32,144,229,2,0,160,225
	.byte 0,16,160,227,0,224,146,229
bl p_10

	.byte 1,16,160,227,13,16,192,229,12,0,154,229,32,32,144,229,2,0,160,225,1,16,160,227,0,224,146,229
bl p_10

	.byte 1,16,160,227,13,16,192,229,12,0,154,229,48,16,144,229,1,16,129,226,48,16,128,229,12,0,154,229,48,0,144,229
	.byte 12,16,154,229,44,16,145,229,1,0,80,225,15,0,0,186,12,0,154,229,1,16,160,227,53,16,192,229,12,0,154,229
	.byte 0,128,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 88
	.byte 8,128,159,231
bl p_43

	.byte 0,32,160,225,12,0,154,229,40,16,144,229,2,0,160,225,0,224,146,229
bl p_44

	.byte 44,0,0,234,12,0,154,229,36,0,144,229,32,0,139,229,12,0,154,229,36,0,144,229,12,16,144,229,0,0,160,227
bl p_9

	.byte 0,16,160,225,32,0,155,229,12,32,144,229,1,0,82,225,59,0,0,155,1,17,160,225,1,0,128,224,16,0,128,226
	.byte 0,0,144,229,0,0,139,229,12,0,154,229,0,128,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 88
	.byte 8,128,159,231
bl p_43

	.byte 0,32,160,225,0,16,155,229,0,224,146,229
bl p_44

	.byte 15,0,0,234,12,0,154,229,32,32,144,229,2,0,160,225,0,16,160,227,0,224,146,229
bl p_10

	.byte 0,16,160,227,12,16,192,229,12,0,154,229,32,32,144,229,2,0,160,225,1,16,160,227,0,224,146,229
bl p_10

	.byte 0,16,160,227,12,16,192,229,12,0,154,229,32,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 12
	.byte 0,0,159,231
bl p_6

	.byte 0,16,160,225,32,0,155,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 16
	.byte 2,32,159,231,0,32,146,229,8,32,129,229,32,16,128,229,12,0,154,229,1,16,160,227,52,16,192,229,0,0,224,227
	.byte 24,0,138,229,0,0,160,227,0,0,0,234,1,0,160,227,44,208,139,226,0,13,189,232,8,112,157,229,0,160,157,232
	.byte 14,16,160,225,0,0,159,229
bl p_13

	.byte 120,6,0,2

Lme_f:
	.align 2
Lm_10:
m_GameScript__FlipCardFaceUpc__Iterator0_System_Collections_Generic_IEnumerator_object_get_Current:
_m_10:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
	.byte 16,0,144,229,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_10:
	.align 2
Lm_11:
m_GameScript__FlipCardFaceUpc__Iterator0_System_Collections_IEnumerator_get_Current:
_m_11:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
	.byte 16,0,144,229,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_11:
	.align 2
Lm_12:
m_GameScript__FlipCardFaceUpc__Iterator0_Dispose:
_m_12:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
	.byte 1,16,160,227,20,16,192,229,0,16,224,227,24,16,128,229,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_12:
	.align 2
Lm_13:
m_GameScript__FlipCardFaceUpc__Iterator0_Reset:
_m_13:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,149,0,160,227
	.byte 6,12,128,226,2,4,128,226
bl p_45
bl p_46

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_13:
	.align 2
Lm_15:
m_System_Array_InternalArray__IEnumerable_GetEnumerator_object:
_m_15:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,24,208,77,226,13,176,160,225,16,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 92
	.byte 0,0,159,231,0,16,160,227,0,16,139,229,0,16,160,227,4,16,139,229,0,128,160,225,11,0,160,225,16,16,155,229
bl p_47

	.byte 0,0,155,229,8,0,139,229,4,0,155,229,12,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 92
	.byte 0,0,159,231
bl p_6

	.byte 8,16,128,226,8,32,155,229,0,32,129,229,12,32,155,229,4,32,129,229,24,208,139,226,0,9,189,232,8,112,157,229
	.byte 0,160,157,232

Lme_15:
	.align 2
Lm_16:
m_wrapper_managed_to_native_System_Array_GetGenericValueImpl_int_object_:
_m_16:

	.byte 13,192,160,225,240,95,45,233,120,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229,8,32,139,229
bl p_48

	.byte 16,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 0,0,155,229,0,0,80,227,16,0,0,10,0,0,155,229,4,16,155,229,8,32,155,229
bl p_49

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 96
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,10,0,0,26,16,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232,150,0,160,227,6,12,128,226,2,4,128,226
bl p_45
bl p_46
bl p_50

	.byte 242,255,255,234

Lme_16:
	.align 2
Lm_17:
m_wrapper_managed_to_native_System_Threading_Interlocked_CompareExchange_object__object_object:
_m_17:

	.byte 13,192,160,225,240,95,45,233,112,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229,2,160,160,225
bl p_48

	.byte 8,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 0,0,155,229,4,16,155,229,10,32,160,225
bl p_51

	.byte 0,16,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 96
	.byte 0,0,159,231,0,0,144,229,1,160,160,225,0,0,80,227,6,0,0,26,10,0,160,225,8,32,139,226,0,192,146,229
	.byte 4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_50

	.byte 246,255,255,234

Lme_17:
.text
	.align 3
methods_end:
.data
	.align 3
method_addresses:
	.align 2
	.long _m_0
	.align 2
	.long _m_1
	.align 2
	.long _m_2
	.align 2
	.long _m_3
	.align 2
	.long _m_4
	.align 2
	.long _m_5
	.align 2
	.long _m_6
	.align 2
	.long _m_7
	.align 2
	.long _m_8
	.align 2
	.long _m_9
	.align 2
	.long _m_a
	.align 2
	.long _m_b
	.align 2
	.long _m_c
	.align 2
	.long _m_d
	.align 2
	.long _m_e
	.align 2
	.long _m_f
	.align 2
	.long _m_10
	.align 2
	.long _m_11
	.align 2
	.long _m_12
	.align 2
	.long _m_13
	.align 2
	.long 0
	.align 2
	.long _m_15
	.align 2
	.long _m_16
	.align 2
	.long _m_17
.text
	.align 3
method_offsets:

	.long Lm_0 - methods,Lm_1 - methods,Lm_2 - methods,Lm_3 - methods,Lm_4 - methods,Lm_5 - methods,Lm_6 - methods,Lm_7 - methods
	.long Lm_8 - methods,Lm_9 - methods,Lm_a - methods,Lm_b - methods,Lm_c - methods,Lm_d - methods,Lm_e - methods,Lm_f - methods
	.long Lm_10 - methods,Lm_11 - methods,Lm_12 - methods,Lm_13 - methods,-1,Lm_15 - methods,Lm_16 - methods,Lm_17 - methods

.text
	.align 3
method_info:
mi:
Lm_0_p:

	.byte 0,0
Lm_1_p:

	.byte 0,1,2
Lm_2_p:

	.byte 3,0,2,3,4
Lm_3_p:

	.byte 3,0,0
Lm_4_p:

	.byte 3,0,10,5,6,7,4,3,8,6,7,3,4
Lm_5_p:

	.byte 3,0,1,9
Lm_6_p:

	.byte 3,0,9,10,10,11,12,4,13,10,3,4
Lm_7_p:

	.byte 3,0,8,14,15,16,17,18,16,19,18
Lm_8_p:

	.byte 3,0,1,20
Lm_9_p:

	.byte 3,0,2,3,4
Lm_a_p:

	.byte 0,0
Lm_b_p:

	.byte 0,0
Lm_c_p:

	.byte 0,1,21
Lm_d_p:

	.byte 0,1,22
Lm_e_p:

	.byte 0,0
Lm_f_p:

	.byte 0,6,23,24,25,25,6,7
Lm_10_p:

	.byte 0,0
Lm_11_p:

	.byte 0,0
Lm_12_p:

	.byte 0,0
Lm_13_p:

	.byte 0,0
Lm_15_p:

	.byte 0,2,26,26
Lm_16_p:

	.byte 0,1,27
Lm_17_p:

	.byte 0,1,27
.text
	.align 3
method_info_offsets:

	.long Lm_0_p - mi,Lm_1_p - mi,Lm_2_p - mi,Lm_3_p - mi,Lm_4_p - mi,Lm_5_p - mi,Lm_6_p - mi,Lm_7_p - mi
	.long Lm_8_p - mi,Lm_9_p - mi,Lm_a_p - mi,Lm_b_p - mi,Lm_c_p - mi,Lm_d_p - mi,Lm_e_p - mi,Lm_f_p - mi
	.long Lm_10_p - mi,Lm_11_p - mi,Lm_12_p - mi,Lm_13_p - mi,0,Lm_15_p - mi,Lm_16_p - mi,Lm_17_p - mi

.text
	.align 3
extra_method_info:

	.byte 0,0,255,254,0,0,0,41,1,1,198,0,3,248,0,1,1,2,1,1,6,83,121,115,116,101,109,46,65,114,114,97
	.byte 121,58,71,101,116,71,101,110,101,114,105,99,86,97,108,117,101,73,109,112,108,32,40,105,110,116,44,111,98,106,101,99
	.byte 116,38,41,0,1,6,83,121,115,116,101,109,46,84,104,114,101,97,100,105,110,103,46,73,110,116,101,114,108,111,99,107
	.byte 101,100,58,67,111,109,112,97,114,101,69,120,99,104,97,110,103,101,32,40,111,98,106,101,99,116,38,44,111,98,106,101
	.byte 99,116,44,111,98,106,101,99,116,41,0

.text
	.align 3
extra_method_table:

	.long 11,0,0,0,19,22,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,1,21,0,68,23,0,0
	.long 0,0
.text
	.align 3
extra_method_info_offsets:

	.long 3,21,1,22,19,23,68
.text
	.align 3
method_order:

	.long 0,16777215,0,1,2,3,4,5
	.long 6,7,8,9,10,11,12,13
	.long 14,15,16,17,18,19,21,22
	.long 23

.text
method_order_end:
.text
	.align 3
class_name_table:

	.short 11, 1, 11, 0, 0, 0, 0, 0
	.short 0, 2, 12, 0, 0, 3, 0, 0
	.short 0, 0, 0, 0, 0, 4, 0, 5
	.short 0, 6, 0
.text
	.align 3
got_info:

	.byte 12,0,39,17,0,1,16,3,0,4,16,3,0,5,17,0,13,14,219,0,0,1,0,16,219,0,0,1,0,131,130,6
	.byte 255,255,0,0,0,0,202,0,0,7,17,0,63,14,194,0,0,0,2,1,130,53,2,17,0,128,131,17,0,128,143,11
	.byte 128,205,2,14,219,0,0,3,0,16,219,0,0,3,0,131,130,17,0,128,157,17,0,128,169,14,4,0,17,0,128,173
	.byte 14,6,0,17,0,128,177,17,0,128,187,8,2,88,129,36,14,21,2,34,255,255,0,0,0,0,255,43,0,0,1,14
	.byte 219,0,0,0,21,42,1,1,2,1,33,3,194,0,10,117,3,194,0,17,65,7,14,95,95,101,109,117,108,95,111,112
	.byte 95,105,100,105,118,0,3,194,0,3,4,3,194,0,4,96,7,20,109,111,110,111,95,111,98,106,101,99,116,95,110,101
	.byte 119,95,102,97,115,116,0,7,16,109,111,110,111,95,97,114,114,97,121,95,110,101,119,95,50,0,3,8,3,194,0,11
	.byte 151,3,255,255,0,0,0,0,202,0,0,10,7,23,104,101,108,112,101,114,95,115,116,101,108,101,109,95,114,101,102,95
	.byte 99,104,101,99,107,0,3,255,255,0,0,0,0,202,0,0,12,7,32,109,111,110,111,95,97,114,99,104,95,116,104,114
	.byte 111,119,95,99,111,114,108,105,98,95,101,120,99,101,112,116,105,111,110,0,3,194,0,7,8,3,194,0,7,9,3,194
	.byte 0,46,183,3,194,0,37,239,3,7,3,194,0,37,247,7,23,109,111,110,111,95,97,114,114,97,121,95,110,101,119,95
	.byte 115,112,101,99,105,102,105,99,0,3,194,0,37,233,3,194,0,37,226,3,194,0,37,227,3,194,0,37,66,3,194,0
	.byte 9,159,3,194,0,12,136,3,194,0,38,10,3,255,253,0,0,0,21,3,194,0,38,13,3,194,0,37,169,3,9,3
	.byte 194,0,10,126,3,194,0,37,232,3,194,0,37,238,3,193,0,0,106,3,255,255,0,0,0,0,202,0,0,33,3,255
	.byte 255,0,0,0,0,202,0,0,35,3,255,255,0,0,0,0,202,0,0,36,3,193,0,2,80,3,255,255,0,0,0,0
	.byte 202,0,0,38,3,255,255,0,0,0,0,202,0,0,41,7,23,109,111,110,111,95,111,98,106,101,99,116,95,110,101,119
	.byte 95,112,116,114,102,114,101,101,0,3,255,255,0,0,0,0,255,43,0,0,1,3,194,0,29,249,7,30,109,111,110,111
	.byte 95,99,114,101,97,116,101,95,99,111,114,108,105,98,95,101,120,99,101,112,116,105,111,110,95,48,0,7,25,109,111,110
	.byte 111,95,97,114,99,104,95,116,104,114,111,119,95,101,120,99,101,112,116,105,111,110,0,3,255,254,0,0,0,219,0,0
	.byte 0,21,42,1,1,2,1,1,198,0,4,131,1,1,2,1,0,7,17,109,111,110,111,95,103,101,116,95,108,109,102,95
	.byte 97,100,100,114,0,31,255,254,0,0,0,41,1,1,198,0,4,3,0,1,1,2,1,7,35,109,111,110,111,95,116,104
	.byte 114,101,97,100,95,105,110,116,101,114,114,117,112,116,105,111,110,95,99,104,101,99,107,112,111,105,110,116,0,31,255,254
	.byte 0,0,0,134,17,1,1,198,0,56,193,0,1,1,2,1
.text
	.align 3
got_info_offsets:

	.long 0,2,3,6,10,14,17,23
	.long 31,42,45,55,59,63,67,73
	.long 81,85,89,92,96,99,103,107
	.long 112,115,127,138
.text
	.align 3
ex_info:
ex:
Le_0_p:

	.byte 52,2,0,0
Le_1_p:

	.byte 64,2,0,0
Le_2_p:

	.byte 112,2,0,0
Le_3_p:

	.byte 80,2,0,0
Le_4_p:

	.byte 130,12,2,26,0
Le_5_p:

	.byte 129,104,2,60,0
Le_6_p:

	.byte 131,60,2,88,0
Le_7_p:

	.byte 129,236,2,88,0
Le_8_p:

	.byte 84,2,0,0
Le_9_p:

	.byte 84,2,122,0
Le_a_p:

	.byte 72,2,128,145,0
Le_b_p:

	.byte 52,2,0,0
Le_c_p:

	.byte 64,2,0,0
Le_d_p:

	.byte 64,2,0,0
Le_e_p:

	.byte 44,2,0,0
Le_f_p:

	.byte 131,76,2,128,171,0
Le_10_p:

	.byte 52,2,0,0
Le_11_p:

	.byte 52,2,0,0
Le_12_p:

	.byte 64,2,0,0
Le_13_p:

	.byte 64,2,0,0
Le_15_p:

	.byte 128,148,2,128,199,0
Le_16_p:

	.byte 128,172,2,128,225,0
Le_17_p:

	.byte 128,152,2,129,3,0
.text
	.align 3
ex_info_offsets:

	.long Le_0_p - ex,Le_1_p - ex,Le_2_p - ex,Le_3_p - ex,Le_4_p - ex,Le_5_p - ex,Le_6_p - ex,Le_7_p - ex
	.long Le_8_p - ex,Le_9_p - ex,Le_a_p - ex,Le_b_p - ex,Le_c_p - ex,Le_d_p - ex,Le_e_p - ex,Le_f_p - ex
	.long Le_10_p - ex,Le_11_p - ex,Le_12_p - ex,Le_13_p - ex,0,Le_15_p - ex,Le_16_p - ex,Le_17_p - ex

.text
	.align 3
unwind_info:

	.byte 25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,14,32,68,13,11,33,12,13,0,76,14
	.byte 8,135,2,68,14,40,132,10,133,9,134,8,136,7,138,6,139,5,140,4,142,3,68,14,56,68,13,11,27,12,13,0
	.byte 76,14,8,135,2,68,14,28,136,7,138,6,139,5,140,4,142,3,68,14,104,68,13,11,33,12,13,0,76,14,8,135
	.byte 2,68,14,40,132,10,133,9,134,8,136,7,138,6,139,5,140,4,142,3,68,14,80,68,13,11,22,12,13,0,76,14
	.byte 8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,13,11,25,12,13,0,76,14,8,135,2,68,14,24,136,6,139
	.byte 5,140,4,142,3,68,14,40,68,13,11,27,12,13,0,76,14,8,135,2,68,14,28,136,7,138,6,139,5,140,4,142
	.byte 3,68,14,72,68,13,11,25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,14,48,68,13
	.byte 11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2,142,1,68,14,160,1
	.byte 68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2,142,1,68,14
	.byte 152,1,68,13,11
.text
	.align 3
class_info:
LK_I_0:

	.byte 0,128,144,8,0,0,1
LK_I_1:

	.byte 4,128,144,12,0,0,4,194,0,15,138,194,0,15,141,193,0,0,4,194,0,15,142
LK_I_2:

	.byte 4,128,172,10,56,8,0,4,194,0,15,138,194,0,15,141,193,0,0,4,194,0,15,142
LK_I_3:

	.byte 4,128,160,20,0,0,4,193,0,0,8,193,0,0,5,193,0,0,4,193,0,0,2
LK_I_4:

	.byte 4,128,144,12,0,0,4,194,0,15,138,194,0,15,141,193,0,0,4,194,0,15,142
LK_I_5:

	.byte 9,128,160,28,0,0,4,193,0,0,8,193,0,0,5,193,0,0,4,193,0,0,2,18,16,20,19,17
.text
	.align 3
class_info_offsets:

	.long LK_I_0 - class_info,LK_I_1 - class_info,LK_I_2 - class_info,LK_I_3 - class_info,LK_I_4 - class_info,LK_I_5 - class_info


.text
	.align 4
plt:
mono_aot_Assembly_CSharp_plt:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 108,0
p_1:
plt_UnityEngine_MonoBehaviour__ctor:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 112,139
p_2:
plt_UnityEngine_SceneManagement_SceneManager_LoadScene_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 116,144
p_3:
plt__jit_icall___emul_op_idiv:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 120,149
p_4:
plt_UnityEngine_Component_get_gameObject:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 124,166
p_5:
plt_UnityEngine_GameObject_SetActive_bool:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 128,171
p_6:
plt__jit_icall_mono_object_new_fast:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 132,176
p_7:
plt__jit_icall_mono_array_new_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 136,199
p_8:
plt_GameScript_BuildDeck:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 140,218
p_9:
plt_UnityEngine_Random_Range_int_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 144,220
p_10:
plt_System_Collections_Generic_List_1_Card_get_Item_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 148,225
p_11:
plt__jit_icall_helper_stelem_ref_check:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 152,236
p_12:
plt_System_Collections_Generic_List_1_Card_RemoveAt_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 156,262
p_13:
plt__jit_icall_mono_arch_throw_corlib_exception:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 160,273
p_14:
plt_UnityEngine_Screen_get_width:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 164,308
p_15:
plt_UnityEngine_Screen_get_height:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 168,313
p_16:
plt_UnityEngine_Rect__ctor_single_single_single_single:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 172,318
p_17:
plt_UnityEngine_GUILayout_BeginArea_UnityEngine_Rect:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 176,323
p_18:
plt_GameScript_BuildGrid:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 180,328
p_19:
plt_UnityEngine_GUILayout_EndArea:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 184,330
p_20:
plt__jit_icall_mono_array_new_specific:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 188,335
p_21:
plt_UnityEngine_GUILayout_BeginVertical_UnityEngine_GUILayoutOption__:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 192,361
p_22:
plt_UnityEngine_GUILayout_FlexibleSpace:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 196,366
p_23:
plt_UnityEngine_GUILayout_BeginHorizontal_UnityEngine_GUILayoutOption__:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 200,371
p_24:
plt_UnityEngine_GUI_set_enabled_bool:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 204,376
p_25:
plt_UnityEngine_Mathf_Min_single_single:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 208,381
p_26:
plt_UnityEngine_Resources_Load_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 212,386
p_27:
plt_UnityEngine_GUILayout_MaxWidth_single:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 216,391
p_28:
plt_wrapper_stelemref_object_stelemref_object_intptr_object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 220,396
p_29:
plt_UnityEngine_GUILayout_MaxHeight_single:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 224,403
p_30:
plt_UnityEngine_GUILayout_Button_UnityEngine_Texture_UnityEngine_GUILayoutOption__:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 228,408
p_31:
plt_GameScript_FlipCardFaceUp_Card:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 232,413
p_32:
plt_UnityEngine_MonoBehaviour_StartCoroutine_System_Collections_IEnumerator:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 236,415
p_33:
plt_UnityEngine_GUILayout_EndHorizontal:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 240,420
p_34:
plt_UnityEngine_GUILayout_EndVertical:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 244,425
p_35:
plt_int_ToString:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 248,430
p_36:
plt_System_Collections_Generic_List_1_string_Add_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 252,435
p_37:
plt_System_Collections_Generic_List_1_string_get_Item_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 256,446
p_38:
plt_System_Collections_Generic_List_1_string_RemoveAt_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 260,457
p_39:
plt_string_Concat_string_string_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 264,468
p_40:
plt_System_Collections_Generic_List_1_Card_Add_Card:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 268,473
p_41:
plt_System_Collections_Generic_List_1_Card_IndexOf_Card:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 272,484
p_42:
plt__jit_icall_mono_object_new_ptrfree:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 276,495
p_43:
plt_UnityEngine_Component_GetComponent_UnityEngine_AudioSource:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 280,521
p_44:
plt_UnityEngine_AudioSource_PlayOneShot_UnityEngine_AudioClip:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 284,533
p_45:
plt__jit_icall_mono_create_corlib_exception_0:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 288,538
p_46:
plt__jit_icall_mono_arch_throw_exception:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 292,571
p_47:
plt_System_Array_InternalEnumerator_1_object__ctor_System_Array:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 296,599
p_48:
plt__jit_icall_mono_get_lmf_addr:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 300,625
p_49:
plt__icall_native_System_Array_GetGenericValueImpl_object_int_object_:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 304,645
p_50:
plt__jit_icall_mono_thread_interruption_checkpoint:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 308,663
p_51:
plt__icall_native_System_Threading_Interlocked_CompareExchange_object_object__object_object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 312,701
plt_end:
.text
	.align 3
mono_image_table:

	.long 3
	.asciz "Assembly-CSharp"
	.asciz "0BE9EC9F-8B1F-4EB7-B7D1-37220A3ED20A"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
	.asciz "mscorlib"
	.asciz "13F3BAB0-2393-4CC3-B66C-5CC35EB7AAF0"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
	.asciz "UnityEngine"
	.asciz "B9664E6F-1308-4106-89FF-A2DF07868B2B"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
.data
	.align 3
mono_aot_Assembly_CSharp_got:
	.space 320
got_end:
.data
	.align 3
mono_aot_got_addr:
	.align 2
	.long mono_aot_Assembly_CSharp_got
.data
	.align 3
mono_aot_file_info:

	.long 28,320,52,24,1024,1024,128,0
	.long 0,0,0,0,0
.text
	.align 2
mono_assembly_guid:
	.asciz "0BE9EC9F-8B1F-4EB7-B7D1-37220A3ED20A"
.text
	.align 2
mono_aot_version:
	.asciz "66"
.text
	.align 2
mono_aot_opt_flags:
	.asciz "55650815"
.text
	.align 2
mono_aot_full_aot:
	.asciz "TRUE"
.text
	.align 2
mono_runtime_version:
	.asciz ""
.text
	.align 2
mono_aot_assembly_name:
	.asciz "Assembly-CSharp"
.text
	.align 3
Lglobals_hash:

	.short 73, 27, 0, 0, 0, 0, 0, 0
	.short 0, 15, 0, 19, 0, 0, 0, 0
	.short 0, 6, 0, 0, 0, 3, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 29
	.short 0, 13, 0, 5, 0, 0, 0, 0
	.short 0, 4, 0, 28, 0, 0, 0, 9
	.short 0, 0, 0, 0, 0, 0, 0, 14
	.short 0, 1, 0, 0, 0, 0, 0, 12
	.short 74, 0, 0, 0, 0, 0, 0, 30
	.short 0, 2, 75, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 22, 0, 0, 0, 0, 0, 0
	.short 0, 11, 0, 17, 0, 8, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 16, 0, 20
	.short 0, 7, 73, 24, 0, 10, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 21, 0, 18, 76, 23, 0, 25
	.short 0, 26, 0
.text
	.align 2
name_0:
	.asciz "methods"
.text
	.align 2
name_1:
	.asciz "methods_end"
.text
	.align 2
name_2:
	.asciz "method_addresses"
.text
	.align 2
name_3:
	.asciz "method_offsets"
.text
	.align 2
name_4:
	.asciz "method_info"
.text
	.align 2
name_5:
	.asciz "method_info_offsets"
.text
	.align 2
name_6:
	.asciz "extra_method_info"
.text
	.align 2
name_7:
	.asciz "extra_method_table"
.text
	.align 2
name_8:
	.asciz "extra_method_info_offsets"
.text
	.align 2
name_9:
	.asciz "method_order"
.text
	.align 2
name_10:
	.asciz "method_order_end"
.text
	.align 2
name_11:
	.asciz "class_name_table"
.text
	.align 2
name_12:
	.asciz "got_info"
.text
	.align 2
name_13:
	.asciz "got_info_offsets"
.text
	.align 2
name_14:
	.asciz "ex_info"
.text
	.align 2
name_15:
	.asciz "ex_info_offsets"
.text
	.align 2
name_16:
	.asciz "unwind_info"
.text
	.align 2
name_17:
	.asciz "class_info"
.text
	.align 2
name_18:
	.asciz "class_info_offsets"
.text
	.align 2
name_19:
	.asciz "plt"
.text
	.align 2
name_20:
	.asciz "plt_end"
.text
	.align 2
name_21:
	.asciz "mono_image_table"
.text
	.align 2
name_22:
	.asciz "mono_aot_got_addr"
.text
	.align 2
name_23:
	.asciz "mono_aot_file_info"
.text
	.align 2
name_24:
	.asciz "mono_assembly_guid"
.text
	.align 2
name_25:
	.asciz "mono_aot_version"
.text
	.align 2
name_26:
	.asciz "mono_aot_opt_flags"
.text
	.align 2
name_27:
	.asciz "mono_aot_full_aot"
.text
	.align 2
name_28:
	.asciz "mono_runtime_version"
.text
	.align 2
name_29:
	.asciz "mono_aot_assembly_name"
.data
	.align 3
Lglobals:
	.align 2
	.long Lglobals_hash
	.align 2
	.long name_0
	.align 2
	.long methods
	.align 2
	.long name_1
	.align 2
	.long methods_end
	.align 2
	.long name_2
	.align 2
	.long method_addresses
	.align 2
	.long name_3
	.align 2
	.long method_offsets
	.align 2
	.long name_4
	.align 2
	.long method_info
	.align 2
	.long name_5
	.align 2
	.long method_info_offsets
	.align 2
	.long name_6
	.align 2
	.long extra_method_info
	.align 2
	.long name_7
	.align 2
	.long extra_method_table
	.align 2
	.long name_8
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long name_9
	.align 2
	.long method_order
	.align 2
	.long name_10
	.align 2
	.long method_order_end
	.align 2
	.long name_11
	.align 2
	.long class_name_table
	.align 2
	.long name_12
	.align 2
	.long got_info
	.align 2
	.long name_13
	.align 2
	.long got_info_offsets
	.align 2
	.long name_14
	.align 2
	.long ex_info
	.align 2
	.long name_15
	.align 2
	.long ex_info_offsets
	.align 2
	.long name_16
	.align 2
	.long unwind_info
	.align 2
	.long name_17
	.align 2
	.long class_info
	.align 2
	.long name_18
	.align 2
	.long class_info_offsets
	.align 2
	.long name_19
	.align 2
	.long plt
	.align 2
	.long name_20
	.align 2
	.long plt_end
	.align 2
	.long name_21
	.align 2
	.long mono_image_table
	.align 2
	.long name_22
	.align 2
	.long mono_aot_got_addr
	.align 2
	.long name_23
	.align 2
	.long mono_aot_file_info
	.align 2
	.long name_24
	.align 2
	.long mono_assembly_guid
	.align 2
	.long name_25
	.align 2
	.long mono_aot_version
	.align 2
	.long name_26
	.align 2
	.long mono_aot_opt_flags
	.align 2
	.long name_27
	.align 2
	.long mono_aot_full_aot
	.align 2
	.long name_28
	.align 2
	.long mono_runtime_version
	.align 2
	.long name_29
	.align 2
	.long mono_aot_assembly_name

	.long 0,0
	.globl _mono_aot_module_Assembly_CSharp_info
	.align 3
_mono_aot_module_Assembly_CSharp_info:
	.align 2
	.long Lglobals
.text
	.align 3
mem_end:
#endif
