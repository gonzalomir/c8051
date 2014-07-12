
_descomponer:
;Timer7Segmentos.c,20 :: 		void descomponer(int num){
;Timer7Segmentos.c,23 :: 		for(i=0;i<4;i++)
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
;Timer7Segmentos.c,24 :: 		numero_descompuesto[i]=0;
	MOV A, #_numero_descompuesto+0
	ADD A, descomponer_i_L0+0
	MOV R0, A
	MOV @R0, #0
;Timer7Segmentos.c,23 :: 		for(i=0;i<4;i++)
	INC descomponer_i_L0+0
;Timer7Segmentos.c,24 :: 		numero_descompuesto[i]=0;
	SJMP L_descomponer0
L_descomponer1:
;Timer7Segmentos.c,25 :: 		i=0;
	MOV descomponer_i_L0+0, #0
;Timer7Segmentos.c,26 :: 		while(num!=0){
L_descomponer3:
	MOV A, FARG_descomponer_num+0
	ORL A, FARG_descomponer_num+1
	JZ L_descomponer4
;Timer7Segmentos.c,27 :: 		aux=num/10;
	MOV R4, #10
	MOV R5, #0
	MOV R0, FARG_descomponer_num+0
	MOV R1, FARG_descomponer_num+1
	LCALL _Div_16x16_S+0
	MOV descomponer_aux_L0+0, 0
	MOV descomponer_aux_L0+1, 1
;Timer7Segmentos.c,28 :: 		numero_descompuesto[i]=num-(aux*10);
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
;Timer7Segmentos.c,29 :: 		num=aux;
	MOV FARG_descomponer_num+0, descomponer_aux_L0+0
	MOV FARG_descomponer_num+1, descomponer_aux_L0+1
;Timer7Segmentos.c,30 :: 		i++;
	INC descomponer_i_L0+0
;Timer7Segmentos.c,31 :: 		}
	SJMP L_descomponer3
L_descomponer4:
;Timer7Segmentos.c,32 :: 		}
	RET
; end of _descomponer

_printDisplay:
;Timer7Segmentos.c,34 :: 		void printDisplay(int num){
;Timer7Segmentos.c,35 :: 		descomponer(num);
	MOV FARG_descomponer_num+0, FARG_printDisplay_num+0
	MOV FARG_descomponer_num+1, FARG_printDisplay_num+1
	LCALL _descomponer+0
;Timer7Segmentos.c,36 :: 		}
	RET
; end of _printDisplay

_updateDisplay:
	PUSH PSW+0
	PUSH 224
	PUSH B+0
	PUSH 130
	PUSH 131
;Timer7Segmentos.c,38 :: 		void updateDisplay() iv IVT_ADDR_ET0 ilevel 0 ics ICS_AUTO {
;Timer7Segmentos.c,39 :: 		EA_bit = 0; // Deshabilita las Interrupciones globales
	CLR EA_bit+0
;Timer7Segmentos.c,40 :: 		TR0_bit = 0; // Detener el Timer0
	CLR TR0_bit+0
;Timer7Segmentos.c,41 :: 		TH0 = 0xF0; // Setear el Timer0 high byte
	MOV TH0+0, #240
;Timer7Segmentos.c,42 :: 		TL0 = 0x60; // Setear el Timer0 low byte
	MOV TL0+0, #96
;Timer7Segmentos.c,44 :: 		P0=0;
	MOV P0+0, #0
;Timer7Segmentos.c,45 :: 		P2=digitos[numero_descompuesto[3-indice]];
	MOV R0, _indice+0
	MOV A, _indice+0
	RLC A
	CLR A
	SUBB A, 224
	MOV R1, A
	CLR C
	MOV A, #3
	SUBB A, R0
	MOV R0, A
	MOV A, #0
	SUBB A, R1
	MOV R1, A
	MOV A, #_numero_descompuesto+0
	ADD A, R0
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
;Timer7Segmentos.c,46 :: 		P0=pines[indice];
	MOV R0, _indice+0
	MOV A, _indice+0
	RLC A
	CLR A
	SUBB A, 224
	MOV R1, A
	MOV A, R0
	ADD A, #_pines+0
	MOV R2, A
	MOV A, R1
	ADDC A, hi(#_pines+0)
	MOV R3, A
	MOV 130, 2
	MOV 131, 3
	CLR A
	MOVC A, @A+DPTR
	MOV R0, A
	MOV P0+0, 0
;Timer7Segmentos.c,47 :: 		indice++;
	INC _indice+0
;Timer7Segmentos.c,48 :: 		if(indice==4){
	MOV A, _indice+0
	XRL A, #4
	JNZ L_updateDisplay5
;Timer7Segmentos.c,49 :: 		indice=0;
	MOV _indice+0, #0
;Timer7Segmentos.c,50 :: 		}
L_updateDisplay5:
;Timer7Segmentos.c,53 :: 		TF0_bit = 0;
	CLR TF0_bit+0
;Timer7Segmentos.c,54 :: 		EA_bit = 1; // Habilitar las Interrupciones globales
	SETB EA_bit+0
;Timer7Segmentos.c,55 :: 		TR0_bit = 1; // Correr el Timer0
	SETB TR0_bit+0
;Timer7Segmentos.c,56 :: 		}
	POP 131
	POP 130
	POP B+0
	POP 224
	POP PSW+0
	RETI
; end of _updateDisplay

_main:
	MOV SP+0, #128
;Timer7Segmentos.c,58 :: 		void main() {
;Timer7Segmentos.c,60 :: 		TF0_bit = 0; // Ensure that Timer0 interrupt flag is cleared
	CLR TF0_bit+0
;Timer7Segmentos.c,61 :: 		ET0_bit = 1; // Habilitar la interrupcion del Timer0
	SETB ET0_bit+0
;Timer7Segmentos.c,62 :: 		EA_bit = 1; // Habilitar las Interrupciones globales
	SETB EA_bit+0
;Timer7Segmentos.c,64 :: 		GATE0_bit = 1; // Poner a cero el bit GATE del Timer0
	SETB C
	MOV A, GATE0_bit+0
	MOV #224, C
	MOV GATE0_bit+0, A
;Timer7Segmentos.c,65 :: 		C_T0_bit = 0; // Configura como contador o temporizador el Timer0
	CLR C
	MOV A, C_T0_bit+0
	MOV #224, C
	MOV C_T0_bit+0, A
;Timer7Segmentos.c,66 :: 		M10_bit = 0; // M10_M00 = 01 => Mode 1(16-bit Timer/Counter)
	CLR C
	MOV A, M10_bit+0
	MOV #224, C
	MOV M10_bit+0, A
;Timer7Segmentos.c,67 :: 		M00_bit = 1;
	SETB C
	MOV A, M00_bit+0
	MOV #224, C
	MOV M00_bit+0, A
;Timer7Segmentos.c,70 :: 		TR0_bit = 0; // Apagar el Timer0
	CLR TR0_bit+0
;Timer7Segmentos.c,71 :: 		TH0 = 0x0F; // Setear el Timer0 high byte
	MOV TH0+0, #15
;Timer7Segmentos.c,72 :: 		TL0 = 0xA0; // Setear el Timer0 low byte
	MOV TL0+0, #160
;Timer7Segmentos.c,73 :: 		TR0_bit = 1; // Correr el Timer0
	SETB TR0_bit+0
;Timer7Segmentos.c,77 :: 		while(1){
L_main6:
;Timer7Segmentos.c,78 :: 		printDisplay(numero);
	MOV FARG_printDisplay_num+0, _numero+0
	MOV FARG_printDisplay_num+1, _numero+1
	LCALL _printDisplay+0
;Timer7Segmentos.c,79 :: 		numero++;
	MOV A, #1
	ADD A, _numero+0
	MOV _numero+0, A
	MOV A, #0
	ADDC A, _numero+1
	MOV _numero+1, A
;Timer7Segmentos.c,80 :: 		Delay_ms(1000);
	MOV R5, 8
	MOV R6, 154
	MOV R7, 124
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Timer7Segmentos.c,81 :: 		}
	SJMP L_main6
;Timer7Segmentos.c,82 :: 		}
	SJMP #254
; end of _main
