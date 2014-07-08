
_Timer1InterruptHandler:
	PUSH PSW+0
	PUSH 224
	PUSH B+0
	PUSH 130
	PUSH 131
;Temporizadores.c,13 :: 		void Timer1InterruptHandler() iv IVT_ADDR_ET1{
;Temporizadores.c,14 :: 		EA_bit = 0;        // Limpiar bit de Interrupciones globales
	CLR EA_bit+0
;Temporizadores.c,16 :: 		TR1_bit = 0;       // Stop Timer1
	CLR TR1_bit+0
;Temporizadores.c,17 :: 		TH1 = 0x00;        // Set Timer1 high byte
	MOV TH1+0, #0
;Temporizadores.c,18 :: 		TL1 = 0x01;        // Set Timer1 low byte
	MOV TL1+0, #1
;Temporizadores.c,20 :: 		P0 = ~P0;          // Toggle PORT0
	XRL P0+0, #255
;Temporizadores.c,22 :: 		EA_bit = 1;        // Set global interrupt enable flag
	SETB EA_bit+0
;Temporizadores.c,23 :: 		TR1_bit = 1;       // Run Timer1
	SETB TR1_bit+0
;Temporizadores.c,24 :: 		}
	POP 131
	POP 130
	POP B+0
	POP 224
	POP PSW+0
	RETI
; end of _Timer1InterruptHandler

_main:
	MOV SP+0, #128
;Temporizadores.c,26 :: 		void main() {
;Temporizadores.c,27 :: 		P0  = 0;           // Initialize PORT0
	MOV P0+0, #0
;Temporizadores.c,29 :: 		TF1_bit = 0;       // Ensure that Timer1 interrupt flag is cleared
	CLR TF1_bit+0
;Temporizadores.c,30 :: 		ET1_bit = 1;       // Enable Timer1 interrupt
	SETB ET1_bit+0
;Temporizadores.c,31 :: 		EA_bit  = 1;       // Set global interrupt enable
	SETB EA_bit+0
;Temporizadores.c,33 :: 		GATE1_bit = 1;     // Clear this flag to enable Timer1 whenever TR1 bit is set.
	SETB C
	MOV A, GATE1_bit+0
	MOV #224, C
	MOV GATE1_bit+0, A
;Temporizadores.c,34 :: 		C_T1_bit  = 0;     // Set Timer operation: Timer1 counts the divided-down systam clock.
	CLR C
	MOV A, C_T1_bit+0
	MOV #224, C
	MOV C_T1_bit+0, A
;Temporizadores.c,35 :: 		M11_bit   = 0;     // M11_M01 = 01    =>   Mode 1(16-bit Timer/Counter)
	CLR C
	MOV A, M11_bit+0
	MOV #224, C
	MOV M11_bit+0, A
;Temporizadores.c,36 :: 		M01_bit   = 1;
	SETB C
	MOV A, M01_bit+0
	MOV #224, C
	MOV M01_bit+0, A
;Temporizadores.c,38 :: 		TR1_bit = 0;       // Turn off Timer1
	CLR TR1_bit+0
;Temporizadores.c,39 :: 		TH1 = 0x00;        // Set Timer1 high byte
	MOV TH1+0, #0
;Temporizadores.c,40 :: 		TL1 = 0x01;        // Set Timer1 low byte
	MOV TL1+0, #1
;Temporizadores.c,41 :: 		TR1_bit = 1;       // Run Timer1
	SETB TR1_bit+0
;Temporizadores.c,43 :: 		Lcd_Init();                //Iniciar el LCD
	LCALL _Lcd_Init+0
;Temporizadores.c,44 :: 		Lcd_Cmd(_LCD_CLEAR);       //Limpiar la pantalla
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;Temporizadores.c,45 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);  //Apagar el cursor
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;Temporizadores.c,46 :: 		clk = Get_Fosc_kHz()*1000;
	LCALL _Get_Fosc_kHz+0
	MOV R4, #232
	MOV R5, #3
	MOV R6, #0
	MOV 7, #0
	LCALL _Mul_32x32+0
	MOV _clk+0, 0
	MOV _clk+1, 1
	MOV _clk+2, 2
	MOV _clk+3, 3
;Temporizadores.c,47 :: 		LongWordToStr(clk,cad);
	MOV FARG_LongWordToStr_input+0, 0
	MOV FARG_LongWordToStr_input+1, 1
	MOV FARG_LongWordToStr_input+2, 2
	MOV FARG_LongWordToStr_input+3, 3
	MOV FARG_LongWordToStr_output+0, #_cad+0
	LCALL _LongWordToStr+0
;Temporizadores.c,48 :: 		Lcd_Out(1,4,cad);
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #4
	MOV FARG_LCD_Out_text+0, #_cad+0
	LCALL _LCD_Out+0
;Temporizadores.c,49 :: 		clk=(clk/12);
	MOV R4, #12
	MOV R5, #0
	MOV R6, #0
	MOV 7, #0
	MOV R0, _clk+0
	MOV R1, _clk+1
	MOV R2, _clk+2
	MOV R3, _clk+3
	LCALL _Div_32x32_U+0
	MOV _clk+0, 0
	MOV _clk+1, 1
	MOV _clk+2, 2
	MOV _clk+3, 3
;Temporizadores.c,50 :: 		LongWordToStr(clk,cad);
	MOV FARG_LongWordToStr_input+0, 0
	MOV FARG_LongWordToStr_input+1, 1
	MOV FARG_LongWordToStr_input+2, 2
	MOV FARG_LongWordToStr_input+3, 3
	MOV FARG_LongWordToStr_output+0, #_cad+0
	LCALL _LongWordToStr+0
;Temporizadores.c,51 :: 		Lcd_Out(2,4,cad);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #4
	MOV FARG_LCD_Out_text+0, #_cad+0
	LCALL _LCD_Out+0
;Temporizadores.c,53 :: 		while(1){
L_main0:
;Temporizadores.c,55 :: 		}
	SJMP L_main0
;Temporizadores.c,56 :: 		}
	SJMP #254
; end of _main
