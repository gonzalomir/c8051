
_main:
	MOV SP+0, #128
;Puerto UART.c,4 :: 		void main() {
;Puerto UART.c,6 :: 		UART1_Init(4800);               // Initialize UART module at 4800 bps
	MOV TH1+0, #247
	MOV TL1+0, #247
	LCALL _UART1_Init+0
;Puerto UART.c,7 :: 		Delay_ms(100);                  // Wait for UART module to stabilize
	MOV R5, 2
	MOV R6, 4
	MOV R7, 99
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;Puerto UART.c,9 :: 		UART1_Write_Text("Encender Led[e]\r");
	MOV FARG_UART1_Write_Text_uart_text+0, #?lstr1_Puerto_32UART+0
	LCALL _UART1_Write_Text+0
;Puerto UART.c,10 :: 		UART1_Write_Text("Apagar   Led[a]\r");
	MOV FARG_UART1_Write_Text_uart_text+0, #?lstr2_Puerto_32UART+0
	LCALL _UART1_Write_Text+0
;Puerto UART.c,12 :: 		while (1) {                     // Endless loop
L_main0:
;Puerto UART.c,13 :: 		if (UART1_Data_Ready()) {     // If data is received,
	LCALL _UART1_Data_Ready+0
	MOV A, R0
	JZ L_main2
;Puerto UART.c,14 :: 		uart_rd = UART1_Read();     //   read the received data,
	LCALL _UART1_Read+0
	MOV _uart_rd+0, 0
;Puerto UART.c,15 :: 		UART1_Write(uart_rd);       //   and send data via UART
	MOV FARG_UART1_Write_data_+0, 0
	LCALL _UART1_Write+0
;Puerto UART.c,16 :: 		switch(uart_rd){
	SJMP L_main3
;Puerto UART.c,17 :: 		case 'e':
L_main5:
;Puerto UART.c,18 :: 		led=1;
	SETB P2_0_bit+0
;Puerto UART.c,19 :: 		break;
	SJMP L_main4
;Puerto UART.c,20 :: 		case 'a':
L_main6:
;Puerto UART.c,21 :: 		led=0;
	CLR P2_0_bit+0
;Puerto UART.c,22 :: 		break;
	SJMP L_main4
;Puerto UART.c,23 :: 		}
L_main3:
	MOV A, _uart_rd+0
	XRL A, #101
	JZ L_main5
	MOV A, _uart_rd+0
	XRL A, #97
	JZ L_main6
L_main4:
;Puerto UART.c,24 :: 		}
L_main2:
;Puerto UART.c,25 :: 		}
	SJMP L_main0
;Puerto UART.c,26 :: 		}
	SJMP #254
; end of _main
