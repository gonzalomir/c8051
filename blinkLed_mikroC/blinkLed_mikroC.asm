
_main:
	MOV SP+0, #128
;blinkLed_mikroC.c,4 :: 		void main() {
;blinkLed_mikroC.c,5 :: 		estado=1;
	SETB C
	MOV A, _estado+0
	MOV #224, C
	MOV _estado+0, A
;blinkLed_mikroC.c,6 :: 		while(1){
L_main0:
;blinkLed_mikroC.c,7 :: 		led=estado;
	MOV A, _estado+0
	MOV C, #224
	MOV P0_0_bit+0, C
;blinkLed_mikroC.c,8 :: 		Delay_ms(333);
	MOV R5, 5
	MOV R6, 56
	MOV R7, 189
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;blinkLed_mikroC.c,9 :: 		estado=1-estado;
	MOV A, _estado+0
	MOV C, 224
	CLR A
	RLC A
	MOV R0, A
	CLR C
	MOV A, #1
	SUBB A, R0
	MOV R0, A
	RRC A
	MOV A, _estado+0
	MOV #224, C
	MOV _estado+0, A
;blinkLed_mikroC.c,10 :: 		}
	SJMP L_main0
;blinkLed_mikroC.c,11 :: 		}
	SJMP #254
; end of _main
