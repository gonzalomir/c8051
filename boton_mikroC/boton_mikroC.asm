
_main:
	MOV SP+0, #128
;boton_mikroC.c,5 :: 		void main() {
;boton_mikroC.c,6 :: 		P0=255;//Configura todos los pines del puerto 0 como entradas
	MOV P0+0, #255
;boton_mikroC.c,7 :: 		estado=0;
	CLR C
	MOV A, _estado+0
	MOV #224, C
	MOV _estado+0, A
;boton_mikroC.c,8 :: 		do{
L_main0:
;boton_mikroC.c,9 :: 		if(boton){
	JNB P0_0_bit+0, L_main3
	NOP
;boton_mikroC.c,10 :: 		led=1;
	SETB P2_0_bit+0
;boton_mikroC.c,11 :: 		}
	SJMP L_main4
L_main3:
;boton_mikroC.c,13 :: 		led=0;
	CLR P2_0_bit+0
;boton_mikroC.c,14 :: 		}
L_main4:
;boton_mikroC.c,15 :: 		}while(1);
	SJMP L_main0
;boton_mikroC.c,16 :: 		}
	SJMP #254
; end of _main
