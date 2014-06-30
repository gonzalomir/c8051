
_main:
	MOV SP+0, #128
;calculadora.c,18 :: 		void main() {
;calculadora.c,19 :: 		cnt = 0;                                 // Reset counter
	MOV _cnt+0, #0
;calculadora.c,20 :: 		Keypad_Init();                           // Initialize Keypad
	LCALL _Keypad_Init+0
;calculadora.c,21 :: 		Lcd_Init();                              // Initialize Lcd
	LCALL _Lcd_Init+0
;calculadora.c,22 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;calculadora.c,23 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;calculadora.c,25 :: 		Lcd_Out(1, 1, "Key  :");                 // Write message text on Lcd
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #?lstr1_calculadora+0
	LCALL _LCD_Out+0
;calculadora.c,26 :: 		Lcd_Out(2, 1, "Times:");
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	MOV FARG_LCD_Out_text+0, #?lstr2_calculadora+0
	LCALL _LCD_Out+0
;calculadora.c,28 :: 		do {
L_main0:
;calculadora.c,29 :: 		kp = 0;                                // Reset key code variable
	MOV _kp+0, #0
;calculadora.c,32 :: 		do
L_main3:
;calculadora.c,34 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	LCALL _Keypad_Key_Click+0
	MOV _kp+0, 0
;calculadora.c,35 :: 		while (!kp);
	MOV A, R0
	JZ L_main3
;calculadora.c,37 :: 		switch (kp) {
	SJMP L_main6
;calculadora.c,43 :: 		case  1: kp = 49; break; // 1        // Uncomment this block for keypad4x4
L_main8:
	MOV _kp+0, #49
	LJMP L_main7
;calculadora.c,44 :: 		case  2: kp = 50; break; // 2
L_main9:
	MOV _kp+0, #50
	LJMP L_main7
;calculadora.c,45 :: 		case  3: kp = 51; break; // 3
L_main10:
	MOV _kp+0, #51
	LJMP L_main7
;calculadora.c,46 :: 		case  4: kp = 65; break; // A
L_main11:
	MOV _kp+0, #65
	LJMP L_main7
;calculadora.c,47 :: 		case  5: kp = 52; break; // 4
L_main12:
	MOV _kp+0, #52
	LJMP L_main7
;calculadora.c,48 :: 		case  6: kp = 53; break; // 5
L_main13:
	MOV _kp+0, #53
	LJMP L_main7
;calculadora.c,49 :: 		case  7: kp = 54; break; // 6
L_main14:
	MOV _kp+0, #54
	LJMP L_main7
;calculadora.c,50 :: 		case  8: kp = 66; break; // B
L_main15:
	MOV _kp+0, #66
	LJMP L_main7
;calculadora.c,51 :: 		case  9: kp = 55; break; // 7
L_main16:
	MOV _kp+0, #55
	LJMP L_main7
;calculadora.c,52 :: 		case 10: kp = 56; break; // 8
L_main17:
	MOV _kp+0, #56
	LJMP L_main7
;calculadora.c,53 :: 		case 11: kp = 57; break; // 9
L_main18:
	MOV _kp+0, #57
	LJMP L_main7
;calculadora.c,54 :: 		case 12: kp = 67; break; // C
L_main19:
	MOV _kp+0, #67
	LJMP L_main7
;calculadora.c,55 :: 		case 13: kp = 42; break; // *
L_main20:
	MOV _kp+0, #42
	LJMP L_main7
;calculadora.c,56 :: 		case 14: kp = 48; break; // 0
L_main21:
	MOV _kp+0, #48
	LJMP L_main7
;calculadora.c,57 :: 		case 15: kp = 35; break; // #
L_main22:
	MOV _kp+0, #35
	LJMP L_main7
;calculadora.c,58 :: 		case 16: kp = 68; break; // D
L_main23:
	MOV _kp+0, #68
	LJMP L_main7
;calculadora.c,60 :: 		}
L_main6:
	MOV A, _kp+0
	XRL A, #1
	JZ L_main8
	MOV A, _kp+0
	XRL A, #2
	JZ L_main9
	MOV A, _kp+0
	XRL A, #3
	JZ L_main10
	MOV A, _kp+0
	XRL A, #4
	JZ L_main11
	MOV A, _kp+0
	XRL A, #5
	JZ L_main12
	MOV A, _kp+0
	XRL A, #6
	JZ L_main13
	MOV A, _kp+0
	XRL A, #7
	JZ L_main14
	MOV A, _kp+0
	XRL A, #8
	JZ L_main15
	MOV A, _kp+0
	XRL A, #9
	JZ L_main16
	MOV A, _kp+0
	XRL A, #10
	JNZ #3
	LJMP L_main17
	MOV A, _kp+0
	XRL A, #11
	JNZ #3
	LJMP L_main18
	MOV A, _kp+0
	XRL A, #12
	JNZ #3
	LJMP L_main19
	MOV A, _kp+0
	XRL A, #13
	JNZ #3
	LJMP L_main20
	MOV A, _kp+0
	XRL A, #14
	JNZ #3
	LJMP L_main21
	MOV A, _kp+0
	XRL A, #15
	JNZ #3
	LJMP L_main22
	MOV A, _kp+0
	XRL A, #16
	JNZ #3
	LJMP L_main23
L_main7:
;calculadora.c,62 :: 		if (kp != oldstate) {                  // Pressed key differs from previous
	MOV A, _kp+0
	XRL A, _oldstate+0
	JZ L_main24
;calculadora.c,63 :: 		cnt = 1;
	MOV _cnt+0, #1
;calculadora.c,64 :: 		oldstate = kp;
	MOV _oldstate+0, _kp+0
;calculadora.c,65 :: 		}
	SJMP L_main25
L_main24:
;calculadora.c,67 :: 		cnt++;
	INC _cnt+0
;calculadora.c,68 :: 		}
L_main25:
;calculadora.c,70 :: 		Lcd_Chr(1, 10, kp);                    // Print key ASCII value on Lcd
	MOV FARG_Lcd_Chr_row+0, #1
	MOV FARG_Lcd_Chr_column+0, #10
	MOV FARG_Lcd_Chr_out_char+0, _kp+0
	LCALL _Lcd_Chr+0
;calculadora.c,72 :: 		if (cnt == 255) {                      // If counter varialble overflow
	MOV A, _cnt+0
	XRL A, #255
	JNZ L_main26
;calculadora.c,73 :: 		cnt = 0;
	MOV _cnt+0, #0
;calculadora.c,74 :: 		Lcd_Out(2, 10, "   ");
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #10
	MOV FARG_LCD_Out_text+0, #?lstr3_calculadora+0
	LCALL _LCD_Out+0
;calculadora.c,75 :: 		}
L_main26:
;calculadora.c,77 :: 		WordToStr(cnt, txt);                   // Transform counter value to string
	MOV FARG_WordToStr_input+0, _cnt+0
	CLR A
	MOV FARG_WordToStr_input+1, A
	MOV FARG_WordToStr_output+0, #_txt+0
	LCALL _WordToStr+0
;calculadora.c,78 :: 		Lcd_Out(2, 10, txt);                   // Display counter value on Lcd
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #10
	MOV FARG_LCD_Out_text+0, #_txt+0
	LCALL _LCD_Out+0
;calculadora.c,79 :: 		} while (1);
	LJMP L_main0
;calculadora.c,80 :: 		}
	SJMP #254
; end of _main
