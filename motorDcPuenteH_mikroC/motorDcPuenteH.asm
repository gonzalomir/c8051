
_motorAdelante:
;motorDcPuenteH.c,1 :: 		void motorAdelante(){
;motorDcPuenteH.c,2 :: 		P2_0_bit=1;
	SETB P2_0_bit+0
;motorDcPuenteH.c,3 :: 		P2_1_bit=0;
	CLR P2_1_bit+0
;motorDcPuenteH.c,4 :: 		}
	RET
; end of _motorAdelante

_motorAtras:
;motorDcPuenteH.c,6 :: 		void motorAtras(){
;motorDcPuenteH.c,7 :: 		P2_0_bit=0;
	CLR P2_0_bit+0
;motorDcPuenteH.c,8 :: 		P2_1_bit=1;
	SETB P2_1_bit+0
;motorDcPuenteH.c,9 :: 		}
	RET
; end of _motorAtras

_motorDetener:
;motorDcPuenteH.c,11 :: 		void motorDetener(){
;motorDcPuenteH.c,12 :: 		P2_0_bit=0;
	CLR P2_0_bit+0
;motorDcPuenteH.c,13 :: 		P2_1_bit=0;
	CLR P2_1_bit+0
;motorDcPuenteH.c,14 :: 		}
	RET
; end of _motorDetener

_main:
	MOV SP+0, #128
;motorDcPuenteH.c,16 :: 		void main() {
;motorDcPuenteH.c,17 :: 		P2=0;
	MOV P2+0, #0
;motorDcPuenteH.c,18 :: 		while(1){
L_main0:
;motorDcPuenteH.c,19 :: 		motorAdelante();
	LCALL _motorAdelante+0
;motorDcPuenteH.c,20 :: 		Delay_ms(2500);
	MOV R5, 32
	MOV R6, 171
	MOV R7, 57
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;motorDcPuenteH.c,21 :: 		motorAtras();
	LCALL _motorAtras+0
;motorDcPuenteH.c,22 :: 		Delay_ms(5000);
	MOV R5, 64
	MOV R6, 85
	MOV R7, 116
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;motorDcPuenteH.c,23 :: 		motorDetener();
	LCALL _motorDetener+0
;motorDcPuenteH.c,24 :: 		Delay_ms(2500);
	MOV R5, 32
	MOV R6, 171
	MOV R7, 57
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;motorDcPuenteH.c,25 :: 		}
	SJMP L_main0
;motorDcPuenteH.c,26 :: 		}
	SJMP #254
; end of _main
