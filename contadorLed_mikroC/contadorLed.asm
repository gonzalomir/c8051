
_main:
	MOV SP+0, #128
;contadorLed.c,1 :: 		void main() {
;contadorLed.c,2 :: 		char contador=0;
	MOV main_contador_L0+0, #0
;contadorLed.c,3 :: 		while(1){
L_main0:
;contadorLed.c,4 :: 		P0=contador;
	MOV P0+0, main_contador_L0+0
;contadorLed.c,5 :: 		if(contador==255){
	MOV A, main_contador_L0+0
	XRL A, #255
	JNZ L_main2
;contadorLed.c,6 :: 		contador=0;
	MOV main_contador_L0+0, #0
;contadorLed.c,7 :: 		}
	SJMP L_main3
L_main2:
;contadorLed.c,9 :: 		contador++;
	INC main_contador_L0+0
;contadorLed.c,10 :: 		}
L_main3:
;contadorLed.c,11 :: 		Delay_ms(200);
	MOV R5, 3
	MOV R6, 137
	MOV R7, 125
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;contadorLed.c,12 :: 		}
	SJMP L_main0
;contadorLed.c,13 :: 		}
	SJMP #254
; end of _main
