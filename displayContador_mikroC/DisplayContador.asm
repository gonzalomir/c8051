
_main:
	MOV SP+0, #128
;DisplayContador.c,15 :: 		void main() {
;DisplayContador.c,16 :: 		short contador=0;
	MOV main_contador_L0+0, #0
;DisplayContador.c,17 :: 		do{
L_main0:
;DisplayContador.c,18 :: 		P2=digitos[contador];
	MOV R0, main_contador_L0+0
	MOV A, main_contador_L0+0
	RLC A
	CLR A
	SUBB A, 224
	MOV R1, A
	MOV A, R0
	ADD A, #_digitos+0
	MOV R2, A
	MOV A, R1
	ADDC A, hi(#_digitos+0)
	MOV R3, A
	MOV 130, 2
	MOV 131, 3
	CLR A
	MOVC A, @A+DPTR
	MOV R0, A
	MOV P2+0, 0
;DisplayContador.c,19 :: 		contador++;
	INC main_contador_L0+0
;DisplayContador.c,20 :: 		Delay_ms(1000);
	MOV R5, 13
	MOV R6, 171
	MOV R7, 124
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;DisplayContador.c,21 :: 		if(contador==11)
	MOV A, main_contador_L0+0
	XRL A, #11
	JNZ L_main3
;DisplayContador.c,22 :: 		contador=0;
	MOV main_contador_L0+0, #0
L_main3:
;DisplayContador.c,23 :: 		}while(1);
	SJMP L_main0
;DisplayContador.c,24 :: 		}
	SJMP #254
; end of _main
