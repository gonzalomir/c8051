
_Move_Delay:
;Display LCD.c,17 :: 		void Move_Delay() {                  // Function used for text moving
;Display LCD.c,18 :: 		Delay_ms(500);                     // You can change the moving speed here
	MOV R5, 7
	MOV R6, 86
	MOV R7, 60
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;Display LCD.c,19 :: 		}
	RET
; end of _Move_Delay

_main:
	MOV SP+0, #128
;Display LCD.c,21 :: 		void main(){
;Display LCD.c,23 :: 		Lcd_Init();                        // Initialize Lcd
	LCALL _Lcd_Init+0
;Display LCD.c,25 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;Display LCD.c,26 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;Display LCD.c,27 :: 		Lcd_Out(1,6,txt3);                 // Write text in first row
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt3+0
	LCALL _LCD_Out+0
;Display LCD.c,29 :: 		Lcd_Out(2,6,txt4);                 // Write text in second row
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #6
	MOV FARG_LCD_Out_text+0, #_txt4+0
	LCALL _LCD_Out+0
;Display LCD.c,30 :: 		Delay_ms(2000);
	MOV R5, 26
	MOV R6, 85
	MOV R7, 250
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;Display LCD.c,31 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;Display LCD.c,33 :: 		Lcd_Out(1,1,txt1);                 // Write text in first row
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #_txt1+0
	LCALL _LCD_Out+0
;Display LCD.c,34 :: 		Lcd_Out(2,5,txt2);                 // Write text in second row
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #5
	MOV FARG_LCD_Out_text+0, #_txt2+0
	LCALL _LCD_Out+0
;Display LCD.c,36 :: 		Delay_ms(2000);
	MOV R5, 26
	MOV R6, 85
	MOV R7, 250
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;Display LCD.c,39 :: 		for(i=0; i<4; i++) {               // Move text to the right 4 times
	MOV _i+0, #0
L_main0:
	CLR C
	MOV A, _i+0
	SUBB A, #4
	JNC L_main1
;Display LCD.c,40 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOV FARG_Lcd_Cmd_out_char+0, #28
	LCALL _Lcd_Cmd+0
;Display LCD.c,41 :: 		Move_Delay();
	LCALL _Move_Delay+0
;Display LCD.c,39 :: 		for(i=0; i<4; i++) {               // Move text to the right 4 times
	INC _i+0
;Display LCD.c,42 :: 		}
	SJMP L_main0
L_main1:
;Display LCD.c,44 :: 		while(1) {                         // Endless loop
L_main3:
;Display LCD.c,45 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	MOV _i+0, #0
L_main5:
	CLR C
	MOV A, _i+0
	SUBB A, #8
	JNC L_main6
;Display LCD.c,46 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT);
	MOV FARG_Lcd_Cmd_out_char+0, #24
	LCALL _Lcd_Cmd+0
;Display LCD.c,47 :: 		Move_Delay();
	LCALL _Move_Delay+0
;Display LCD.c,45 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	INC _i+0
;Display LCD.c,48 :: 		}
	SJMP L_main5
L_main6:
;Display LCD.c,50 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	MOV _i+0, #0
L_main8:
	CLR C
	MOV A, _i+0
	SUBB A, #8
	JNC L_main9
;Display LCD.c,51 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOV FARG_Lcd_Cmd_out_char+0, #28
	LCALL _Lcd_Cmd+0
;Display LCD.c,52 :: 		Move_Delay();
	LCALL _Move_Delay+0
;Display LCD.c,50 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	INC _i+0
;Display LCD.c,53 :: 		}
	SJMP L_main8
L_main9:
;Display LCD.c,54 :: 		}
	SJMP L_main3
;Display LCD.c,55 :: 		}
	SJMP #254
; end of _main
