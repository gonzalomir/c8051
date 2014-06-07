
_main:
	MOV SP+0, #128
;MotorPaP1.c,6 :: 		void main(){
;MotorPaP1.c,7 :: 		i=0;
	MOV _i+0, #0
;MotorPaP1.c,8 :: 		while(1){
L_main0:
;MotorPaP1.c,9 :: 		P0=0;
	MOV P0+0, #0
;MotorPaP1.c,10 :: 		for(i=0;i<4;i++){
	MOV _i+0, #0
L_main2:
	CLR C
	MOV A, #4
	XRL A, #128
	MOV R0, A
	MOV A, _i+0
	XRL A, #128
	SUBB A, R0
	JNC L_main3
;MotorPaP1.c,11 :: 		P0=paso_simple[i];
	MOV R0, _i+0
	MOV A, _i+0
	RLC A
	CLR A
	SUBB A, 224
	MOV R1, A
	MOV A, R0
	ADD A, #_paso_simple+0
	MOV R2, A
	MOV A, R1
	ADDC A, hi(#_paso_simple+0)
	MOV R3, A
	MOV 130, 2
	MOV 131, 3
	CLR A
	MOVC A, @A+DPTR
	MOV R0, A
	MOV P0+0, 0
;MotorPaP1.c,12 :: 		Delay_ms(250);
	MOV R5, 4
	MOV R6, 43
	MOV R7, 157
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;MotorPaP1.c,10 :: 		for(i=0;i<4;i++){
	INC _i+0
;MotorPaP1.c,13 :: 		}
	SJMP L_main2
L_main3:
;MotorPaP1.c,14 :: 		P0=0;
	MOV P0+0, #0
;MotorPaP1.c,15 :: 		Delay_ms(1000);
	MOV R5, 13
	MOV R6, 171
	MOV R7, 124
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;MotorPaP1.c,16 :: 		}
	SJMP L_main0
;MotorPaP1.c,17 :: 		}
	SJMP #254
; end of _main
