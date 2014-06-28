
_main:
	MOV SP+0, #128
;Motor Paso a paso 2.c,8 :: 		void main() {
;Motor Paso a paso 2.c,9 :: 		P0=255; //Puerto 0 como entrada
	MOV P0+0, #255
;Motor Paso a paso 2.c,11 :: 		motor_uno=0;
	MOV _motor_uno+0, #0
;Motor Paso a paso 2.c,12 :: 		motor_dos=0;
	MOV _motor_dos+0, #0
;Motor Paso a paso 2.c,14 :: 		while(1){
L_main0:
;Motor Paso a paso 2.c,15 :: 		switch(P0){
	SJMP L_main2
;Motor Paso a paso 2.c,16 :: 		case 1:
L_main4:
;Motor Paso a paso 2.c,17 :: 		i++;
	INC _i+0
;Motor Paso a paso 2.c,18 :: 		break;
	SJMP L_main3
;Motor Paso a paso 2.c,19 :: 		case 2:
L_main5:
;Motor Paso a paso 2.c,20 :: 		i--;
	DEC _i+0
;Motor Paso a paso 2.c,21 :: 		break;
	SJMP L_main3
;Motor Paso a paso 2.c,22 :: 		case 4:
L_main6:
;Motor Paso a paso 2.c,23 :: 		j++;
	INC _j+0
;Motor Paso a paso 2.c,24 :: 		break;
	SJMP L_main3
;Motor Paso a paso 2.c,25 :: 		case 8:
L_main7:
;Motor Paso a paso 2.c,26 :: 		j--;
	DEC _j+0
;Motor Paso a paso 2.c,27 :: 		break;
	SJMP L_main3
;Motor Paso a paso 2.c,28 :: 		}
L_main2:
	MOV A, P0+0
	XRL A, #1
	JZ L_main4
	MOV A, P0+0
	XRL A, #2
	JZ L_main5
	MOV A, P0+0
	XRL A, #4
	JZ L_main6
	MOV A, P0+0
	XRL A, #8
	JZ L_main7
L_main3:
;Motor Paso a paso 2.c,29 :: 		if(i==4)
	MOV A, _i+0
	XRL A, #4
	JNZ L_main8
;Motor Paso a paso 2.c,30 :: 		i=0;
	MOV _i+0, #0
L_main8:
;Motor Paso a paso 2.c,31 :: 		if(i==-1)
	MOV A, _i+0
	XRL A, #255
	JNZ L_main9
;Motor Paso a paso 2.c,32 :: 		i=3;
	MOV _i+0, #3
L_main9:
;Motor Paso a paso 2.c,33 :: 		if(j==4)
	MOV A, _j+0
	XRL A, #4
	JNZ L_main10
;Motor Paso a paso 2.c,34 :: 		j=0;
	MOV _j+0, #0
L_main10:
;Motor Paso a paso 2.c,35 :: 		if(j==-1)
	MOV A, _j+0
	XRL A, #255
	JNZ L_main11
;Motor Paso a paso 2.c,36 :: 		j=3;
	MOV _j+0, #3
L_main11:
;Motor Paso a paso 2.c,37 :: 		motor_uno=paso_simple[i];
	MOV R0, _i+0
	MOV A, _i+0
	RLC A
	CLR A
	SUBB A, 224
	MOV R1, A
	MOV A, R0
	ADD A, #_paso_simple+0
	MOV R0, A
	MOV A, R1
	ADDC A, hi(#_paso_simple+0)
	MOV R1, A
	MOV 130, 0
	MOV 131, 1
	CLR A
	MOVC A, @A+DPTR
	MOV R3, A
	MOV _motor_uno+0, 3
;Motor Paso a paso 2.c,38 :: 		motor_dos=paso_doble[j];
	MOV R0, _j+0
	MOV A, _j+0
	RLC A
	CLR A
	SUBB A, 224
	MOV R1, A
	MOV A, R0
	ADD A, #_paso_doble+0
	MOV R0, A
	MOV A, R1
	ADDC A, hi(#_paso_doble+0)
	MOV R1, A
	MOV 130, 0
	MOV 131, 1
	CLR A
	MOVC A, @A+DPTR
	MOV R2, A
	MOV _motor_dos+0, 2
;Motor Paso a paso 2.c,39 :: 		motor_dos=(motor_dos<<4);
	MOV R1, #4
	MOV A, R2
	INC R1
	SJMP L__main12
L__main13:
	CLR C
	RLC A
L__main12:
	DJNZ R1, L__main13
	MOV R0, A
	MOV _motor_dos+0, 0
;Motor Paso a paso 2.c,40 :: 		P2=motor_uno+motor_dos;
	MOV A, R3
	ADD A, R0
	MOV P2+0, A
;Motor Paso a paso 2.c,41 :: 		Delay_ms(200);
	MOV R5, 3
	MOV R6, 137
	MOV R7, 125
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;Motor Paso a paso 2.c,42 :: 		}
	LJMP L_main0
;Motor Paso a paso 2.c,43 :: 		}
	SJMP #254
; end of _main
