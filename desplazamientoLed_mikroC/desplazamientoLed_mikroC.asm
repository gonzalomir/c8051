
_main:
	MOV SP+0, #128
;desplazamientoLed_mikroC.c,3 :: 		void main() {
;desplazamientoLed_mikroC.c,4 :: 		dato=1;
	MOV _dato+0, #1
;desplazamientoLed_mikroC.c,5 :: 		P2=0;
	MOV P2+0, #0
;desplazamientoLed_mikroC.c,6 :: 		while(1){
L_main0:
;desplazamientoLed_mikroC.c,7 :: 		switch(P2){
	SJMP L_main2
;desplazamientoLed_mikroC.c,8 :: 		case 1:
L_main4:
;desplazamientoLed_mikroC.c,9 :: 		if(dato!=1){
	MOV A, _dato+0
	XRL A, #1
	JZ L_main5
;desplazamientoLed_mikroC.c,10 :: 		dato=(dato>>1);
	MOV R0, #1
	MOV A, _dato+0
	INC R0
	SJMP L__main14
L__main15:
	CLR C
	RRC A
L__main14:
	DJNZ R0, L__main15
	MOV _dato+0, A
;desplazamientoLed_mikroC.c,11 :: 		}
	SJMP L_main6
L_main5:
;desplazamientoLed_mikroC.c,13 :: 		dato=128;
	MOV _dato+0, #128
;desplazamientoLed_mikroC.c,14 :: 		}
L_main6:
;desplazamientoLed_mikroC.c,15 :: 		while(P2==1);
L_main7:
	MOV A, P2+0
	XRL A, #1
	JNZ L_main8
	SJMP L_main7
L_main8:
;desplazamientoLed_mikroC.c,16 :: 		break;
	SJMP L_main3
;desplazamientoLed_mikroC.c,17 :: 		case 2:
L_main9:
;desplazamientoLed_mikroC.c,18 :: 		if(dato!=128){
	MOV A, _dato+0
	XRL A, #128
	JZ L_main10
;desplazamientoLed_mikroC.c,19 :: 		dato=(dato<<1);
	MOV R0, #1
	MOV A, _dato+0
	INC R0
	SJMP L__main16
L__main17:
	CLR C
	RLC A
L__main16:
	DJNZ R0, L__main17
	MOV _dato+0, A
;desplazamientoLed_mikroC.c,20 :: 		}
	SJMP L_main11
L_main10:
;desplazamientoLed_mikroC.c,22 :: 		dato=1;
	MOV _dato+0, #1
;desplazamientoLed_mikroC.c,23 :: 		}
L_main11:
;desplazamientoLed_mikroC.c,24 :: 		while(P2==2);
L_main12:
	MOV A, P2+0
	XRL A, #2
	JNZ L_main13
	SJMP L_main12
L_main13:
;desplazamientoLed_mikroC.c,25 :: 		break;
	SJMP L_main3
;desplazamientoLed_mikroC.c,26 :: 		}
L_main2:
	MOV A, P2+0
	XRL A, #1
	JZ L_main4
	MOV A, P2+0
	XRL A, #2
	JZ L_main9
L_main3:
;desplazamientoLed_mikroC.c,27 :: 		Delay_ms(15);
	MOV R6, 49
	MOV R7, 162
	DJNZ R7, 
	DJNZ R6, 
;desplazamientoLed_mikroC.c,28 :: 		P0=dato;
	MOV P0+0, _dato+0
;desplazamientoLed_mikroC.c,29 :: 		}
	SJMP L_main0
;desplazamientoLed_mikroC.c,30 :: 		}
	SJMP #254
; end of _main
