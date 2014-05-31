
_main:
	MOV SP+0, #128
;motorDcSimple_mikroC.c,3 :: 		void main() {
;motorDcSimple_mikroC.c,4 :: 		while(1){
L_main0:
;motorDcSimple_mikroC.c,5 :: 		motor=0;
	CLR P2_0_bit+0
;motorDcSimple_mikroC.c,6 :: 		Delay_ms(3000);
	MOV R5, 38
	MOV R6, 0
	MOV R7, 120
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;motorDcSimple_mikroC.c,7 :: 		motor=1;
	SETB P2_0_bit+0
;motorDcSimple_mikroC.c,8 :: 		Delay_ms(1500);
	MOV R5, 19
	MOV R6, 0
	MOV R7, 187
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;motorDcSimple_mikroC.c,9 :: 		}
	SJMP L_main0
;motorDcSimple_mikroC.c,10 :: 		}
	SJMP #254
; end of _main
