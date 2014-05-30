
_descomponer:
;Cuatro Displays Multiplexacion.c,18 :: 		void descomponer(int num){
;Cuatro Displays Multiplexacion.c,21 :: 		for(i=0;i<4;i++)
	MOV descomponer_i_L0+0, #0
L_descomponer0:
	CLR C
	MOV A, #4
	XRL A, #128
	MOV R0, A
	MOV A, descomponer_i_L0+0
	XRL A, #128
	SUBB A, R0
	JNC L_descomponer1
;Cuatro Displays Multiplexacion.c,22 :: 		numero_descompuesto[i]=0;
	MOV A, #_numero_descompuesto+0
	ADD A, descomponer_i_L0+0
	MOV R0, A
	MOV @R0, #0
;Cuatro Displays Multiplexacion.c,21 :: 		for(i=0;i<4;i++)
	INC descomponer_i_L0+0
;Cuatro Displays Multiplexacion.c,22 :: 		numero_descompuesto[i]=0;
	SJMP L_descomponer0
L_descomponer1:
;Cuatro Displays Multiplexacion.c,23 :: 		i=0;
	MOV descomponer_i_L0+0, #0
;Cuatro Displays Multiplexacion.c,24 :: 		while(num!=0){
L_descomponer3:
	MOV A, FARG_descomponer_num+0
	ORL A, FARG_descomponer_num+1
	JZ L_descomponer4
;Cuatro Displays Multiplexacion.c,25 :: 		aux=num/10;
	MOV R4, #10
	MOV R5, #0
	MOV R0, FARG_descomponer_num+0
	MOV R1, FARG_descomponer_num+1
	LCALL _Div_16x16_S+0
	MOV descomponer_aux_L0+0, 0
	MOV descomponer_aux_L0+1, 1
;Cuatro Displays Multiplexacion.c,26 :: 		numero_descompuesto[i]=num-(aux*10);
	PUSH 0
	MOV A, #_numero_descompuesto+0
	ADD A, descomponer_i_L0+0
	MOV R0, A
	MOV FLOC__descomponer+0, 0
	POP 0
	MOV B+0, #10
	MOV A, R0
	MUL AB
	MOV R0, A
	CLR C
	MOV A, FARG_descomponer_num+0
	SUBB A, R0
	MOV R1, A
	MOV R0, FLOC__descomponer+0
	MOV @R0, 1
;Cuatro Displays Multiplexacion.c,27 :: 		num=aux;
	MOV FARG_descomponer_num+0, descomponer_aux_L0+0
	MOV FARG_descomponer_num+1, descomponer_aux_L0+1
;Cuatro Displays Multiplexacion.c,28 :: 		i++;
	INC descomponer_i_L0+0
;Cuatro Displays Multiplexacion.c,29 :: 		}
	SJMP L_descomponer3
L_descomponer4:
;Cuatro Displays Multiplexacion.c,30 :: 		}
	RET
; end of _descomponer

_printDisplay:
;Cuatro Displays Multiplexacion.c,32 :: 		void printDisplay(int num){
;Cuatro Displays Multiplexacion.c,33 :: 		short aux=1;
	MOV printDisplay_aux_L0+0, #1
;Cuatro Displays Multiplexacion.c,35 :: 		P2=0;
	MOV P2+0, #0
;Cuatro Displays Multiplexacion.c,36 :: 		descomponer(num);
	MOV FARG_descomponer_num+0, FARG_printDisplay_num+0
	MOV FARG_descomponer_num+1, FARG_printDisplay_num+1
	LCALL _descomponer+0
;Cuatro Displays Multiplexacion.c,37 :: 		for(i=3;i>=0;i--){
	MOV printDisplay_i_L0+0, #3
L_printDisplay5:
	CLR C
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, printDisplay_i_L0+0
	XRL A, #128
	SUBB A, R0
	JC L_printDisplay6
;Cuatro Displays Multiplexacion.c,38 :: 		P3=aux;
	MOV P3+0, printDisplay_aux_L0+0
;Cuatro Displays Multiplexacion.c,39 :: 		P2=digitos[numero_descompuesto[i]];
	MOV A, #_numero_descompuesto+0
	ADD A, printDisplay_i_L0+0
	MOV R0, A
	MOV A, @R0
	ADD A, #_digitos+0
	MOV R1, A
	CLR A
	ADDC A, hi(#_digitos+0)
	MOV R2, A
	MOV 130, 1
	MOV 131, 2
	CLR A
	MOVC A, @A+DPTR
	MOV R0, A
	MOV P2+0, 0
;Cuatro Displays Multiplexacion.c,40 :: 		aux=(aux<<1);
	MOV R0, #1
	MOV A, printDisplay_aux_L0+0
	INC R0
	SJMP L__printDisplay11
L__printDisplay12:
	CLR C
	RLC A
L__printDisplay11:
	DJNZ R0, L__printDisplay12
	MOV printDisplay_aux_L0+0, A
;Cuatro Displays Multiplexacion.c,41 :: 		Delay_ms(12);
	MOV R6, 39
	MOV R7, 232
	DJNZ R7, 
	DJNZ R6, 
;Cuatro Displays Multiplexacion.c,37 :: 		for(i=3;i>=0;i--){
	DEC printDisplay_i_L0+0
;Cuatro Displays Multiplexacion.c,42 :: 		}
	SJMP L_printDisplay5
L_printDisplay6:
;Cuatro Displays Multiplexacion.c,43 :: 		}
	RET
; end of _printDisplay

_main:
	MOV SP+0, #128
;Cuatro Displays Multiplexacion.c,45 :: 		void main() {
;Cuatro Displays Multiplexacion.c,46 :: 		numero=0;
	MOV _numero+0, #0
	MOV _numero+1, #0
;Cuatro Displays Multiplexacion.c,47 :: 		cuentame=0;
	MOV _cuentame+0, #0
;Cuatro Displays Multiplexacion.c,48 :: 		while(1){
L_main8:
;Cuatro Displays Multiplexacion.c,49 :: 		printDisplay(numero);
	MOV FARG_printDisplay_num+0, _numero+0
	MOV FARG_printDisplay_num+1, _numero+1
	LCALL _printDisplay+0
;Cuatro Displays Multiplexacion.c,50 :: 		if(cuentame==10){
	MOV A, _cuentame+0
	XRL A, #10
	JNZ L_main10
;Cuatro Displays Multiplexacion.c,51 :: 		numero++;
	MOV A, #1
	ADD A, _numero+0
	MOV _numero+0, A
	MOV A, #0
	ADDC A, _numero+1
	MOV _numero+1, A
;Cuatro Displays Multiplexacion.c,52 :: 		cuentame=0;
	MOV _cuentame+0, #0
;Cuatro Displays Multiplexacion.c,53 :: 		}
L_main10:
;Cuatro Displays Multiplexacion.c,54 :: 		cuentame++;
	INC _cuentame+0
;Cuatro Displays Multiplexacion.c,55 :: 		}
	SJMP L_main8
;Cuatro Displays Multiplexacion.c,56 :: 		}
	SJMP #254
; end of _main
