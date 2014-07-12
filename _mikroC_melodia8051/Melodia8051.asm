
_main:
	MOV SP+0, #128
;Melodia8051.c,57 :: 		void main() {
;Melodia8051.c,59 :: 		do{
L_main0:
;Melodia8051.c,60 :: 		Sound_Play(Csh6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,61 :: 		Sound_Play(B5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,62 :: 		Sound_Play(Csh6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,63 :: 		Sound_Play(Fsh5, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #228
	MOV FARG_Sound_Play_freq_in_hz+1, #2
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,65 :: 		Sound_Play(D6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #150
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,66 :: 		Sound_Play(Csh6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,67 :: 		Sound_Play(D6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #150
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,68 :: 		Sound_Play(Csh6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,69 :: 		Sound_Play(B5, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,71 :: 		Sound_Play(D6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #150
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,72 :: 		Sound_Play(Csh6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,73 :: 		Sound_Play(D6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #150
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,74 :: 		Sound_Play(Fsh5, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #228
	MOV FARG_Sound_Play_freq_in_hz+1, #2
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,76 :: 		Sound_Play(B5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,77 :: 		Sound_Play(A5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #112
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,78 :: 		Sound_Play(B5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,79 :: 		Sound_Play(A5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #112
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,80 :: 		Sound_Play(Gsh5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #63
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,81 :: 		Sound_Play(B5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,82 :: 		Sound_Play(A5, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #112
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,84 :: 		Sound_Play(Gsh5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #63
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,85 :: 		Sound_Play(A5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #112
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,86 :: 		Sound_Play(B5, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,88 :: 		Sound_Play(A5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #112
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,89 :: 		Sound_Play(B5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,90 :: 		Sound_Play(Csh6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,91 :: 		Sound_Play(B5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,92 :: 		Sound_Play(A5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #112
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,93 :: 		Sound_Play(Gsh5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #63
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,94 :: 		Sound_Play(Fsh5, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #228
	MOV FARG_Sound_Play_freq_in_hz+1, #2
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,96 :: 		Sound_Play(D6, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #150
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,97 :: 		Sound_Play(Csh6, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,99 :: 		Sound_Play(Csh6, DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #44
	MOV FARG_Sound_Play_duration_ms+1, #1
	LCALL _Sound_Play+0
;Melodia8051.c,100 :: 		Sound_Play(Csh6, DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #44
	MOV FARG_Sound_Play_duration_ms+1, #1
	LCALL _Sound_Play+0
;Melodia8051.c,101 :: 		Sound_Play(D6, DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #150
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #44
	MOV FARG_Sound_Play_duration_ms+1, #1
	LCALL _Sound_Play+0
;Melodia8051.c,102 :: 		Sound_Play(Csh6, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,103 :: 		Sound_Play(B5, DUR/2);
	MOV FARG_Sound_Play_freq_in_hz+0, #219
	MOV FARG_Sound_Play_freq_in_hz+1, #3
	MOV FARG_Sound_Play_duration_ms+0, #150
	MOV FARG_Sound_Play_duration_ms+1, #0
	LCALL _Sound_Play+0
;Melodia8051.c,104 :: 		Sound_Play(Csh6, 2*DUR);
	MOV FARG_Sound_Play_freq_in_hz+0, #85
	MOV FARG_Sound_Play_freq_in_hz+1, #4
	MOV FARG_Sound_Play_duration_ms+0, #88
	MOV FARG_Sound_Play_duration_ms+1, #2
	LCALL _Sound_Play+0
;Melodia8051.c,105 :: 		Delay_ms(1000);
	MOV R5, 8
	MOV R6, 154
	MOV R7, 124
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Melodia8051.c,106 :: 		}while(1);
	LJMP L_main0
;Melodia8051.c,107 :: 		}
	SJMP #254
; end of _main
