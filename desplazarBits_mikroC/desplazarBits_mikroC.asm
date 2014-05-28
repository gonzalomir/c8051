
_main:
	MOV SP+0, #128
;desplazarBits_mikroC.c,2 :: 		void main() {
;desplazarBits_mikroC.c,3 :: 		dato=1;
	MOV _dato+0, #1
;desplazarBits_mikroC.c,4 :: 		while(1){
L_main0:
;desplazarBits_mikroC.c,5 :: 		if(dato!=128){
	MOV A, _dato+0
	XRL A, #128
	JZ L_main2
;desplazarBits_mikroC.c,6 :: 		dato=(dato<<1);
	MOV R0, #1
	MOV A, _dato+0
	INC R0
	SJMP L__main4
L__main5:
	CLR C
	RLC A
L__main4:
	DJNZ R0, L__main5
	MOV _dato+0, A
;desplazarBits_mikroC.c,7 :: 		}
	SJMP L_main3
L_main2:
;desplazarBits_mikroC.c,9 :: 		dato=1;
	MOV _dato+0, #1
;desplazarBits_mikroC.c,10 :: 		}
L_main3:
;desplazarBits_mikroC.c,11 :: 		P0=dato;
	MOV P0+0, _dato+0
;desplazarBits_mikroC.c,12 :: 		Delay_ms(500);
	MOV R5, 7
	MOV R6, 86
	MOV R7, 60
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;desplazarBits_mikroC.c,13 :: 		}
	SJMP L_main0
;desplazarBits_mikroC.c,14 :: 		}
	SJMP #254
; end of _main
