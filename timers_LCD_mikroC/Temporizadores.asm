
_Timer1InterruptHandler:
	PUSH PSW+0
	PUSH 224
	PUSH B+0
	PUSH 130
	PUSH 131
;Temporizadores.c,13 :: 		void Timer1InterruptHandler() org IVT_ADDR_ET1{
;Temporizadores.c,14 :: 		EA_bit = 0;        // Deshabilita las Interrupciones globales
	CLR EA_bit+0
;Temporizadores.c,15 :: 		TR1_bit = 0;       // Detener el Timer1
	CLR TR1_bit+0
;Temporizadores.c,16 :: 		TH1 = 0x00;        // Setear el Timer1 high byte
	MOV TH1+0, #0
;Temporizadores.c,17 :: 		TL1 = 0x01;        // Setear el Timer1 low byte
	MOV TL1+0, #1
;Temporizadores.c,19 :: 		num++;
	MOV A, #1
	ADD A, _num+0
	MOV _num+0, A
	MOV A, #0
	ADDC A, _num+1
	MOV _num+1, A
	MOV A, #0
	ADDC A, _num+2
	MOV _num+2, A
	MOV A, #0
	ADDC A, _num+3
	MOV _num+3, A
;Temporizadores.c,21 :: 		EA_bit = 1;        // Habilitar las Interrupciones globales
	SETB EA_bit+0
;Temporizadores.c,22 :: 		TR1_bit = 1;       // Correr el Timer1
	SETB TR1_bit+0
;Temporizadores.c,23 :: 		}
	POP 131
	POP 130
	POP B+0
	POP 224
	POP PSW+0
	RETI
; end of _Timer1InterruptHandler

_main:
	MOV SP+0, #128
;Temporizadores.c,25 :: 		void main() {
;Temporizadores.c,26 :: 		TF1_bit = 0;       // Ensure that Timer1 interrupt flag is cleared
	CLR TF1_bit+0
;Temporizadores.c,27 :: 		ET1_bit = 1;       // Habilitar la interrupcion del Timer1
	SETB ET1_bit+0
;Temporizadores.c,28 :: 		EA_bit  = 1;       // Habilitar las Interrupciones globales
	SETB EA_bit+0
;Temporizadores.c,30 :: 		GATE1_bit = 0;     // Poner a cero el bit GATE del Timer1
	CLR C
	MOV A, GATE1_bit+0
	MOV #224, C
	MOV GATE1_bit+0, A
;Temporizadores.c,31 :: 		C_T1_bit  = 0;     // Configura como contador o temporizador el Timer1
	CLR C
	MOV A, C_T1_bit+0
	MOV #224, C
	MOV C_T1_bit+0, A
;Temporizadores.c,32 :: 		M11_bit   = 0;     // M11_M01 = 01    =>   Mode 1(16-bit Timer/Counter)
	CLR C
	MOV A, M11_bit+0
	MOV #224, C
	MOV M11_bit+0, A
;Temporizadores.c,33 :: 		M01_bit   = 1;
	SETB C
	MOV A, M01_bit+0
	MOV #224, C
	MOV M01_bit+0, A
;Temporizadores.c,35 :: 		TR1_bit = 0;       // Apagar el Timer1
	CLR TR1_bit+0
;Temporizadores.c,36 :: 		TH1 = 0x00;        // Set Timer1 high byte
	MOV TH1+0, #0
;Temporizadores.c,37 :: 		TL1 = 0x01;        // Set Timer1 low byte
	MOV TL1+0, #1
;Temporizadores.c,38 :: 		TR1_bit = 1;       // Correr el Timer1
	SETB TR1_bit+0
;Temporizadores.c,41 :: 		Lcd_Init();                //Iniciar el LCD
	LCALL _Lcd_Init+0
;Temporizadores.c,42 :: 		Lcd_Cmd(_LCD_CLEAR);       //Limpiar la pantalla
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;Temporizadores.c,43 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);  //Apagar el cursor
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;Temporizadores.c,45 :: 		do{
L_main0:
;Temporizadores.c,46 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;Temporizadores.c,47 :: 		LongWordToStr(num,cad);
	MOV FARG_LongWordToStr_input+0, _num+0
	MOV FARG_LongWordToStr_input+1, _num+1
	MOV FARG_LongWordToStr_input+2, _num+2
	MOV FARG_LongWordToStr_input+3, _num+3
	MOV FARG_LongWordToStr_output+0, #_cad+0
	LCALL _LongWordToStr+0
;Temporizadores.c,48 :: 		Lcd_Out(2,5,cad);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #5
	MOV FARG_LCD_Out_text+0, #_cad+0
	LCALL _LCD_Out+0
;Temporizadores.c,49 :: 		Delay_ms(500);
	MOV R5, 4
	MOV R6, 128
	MOV R7, 228
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;Temporizadores.c,50 :: 		}while(1);
	SJMP L_main0
;Temporizadores.c,51 :: 		}
	SJMP #254
; end of _main
