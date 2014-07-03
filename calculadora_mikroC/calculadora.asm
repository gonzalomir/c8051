
_main:
	MOV SP+0, #128
;calculadora.c,20 :: 		void main() {
;calculadora.c,21 :: 		Keypad_Init();                           // Inicializa Keypad
	LCALL _Keypad_Init+0
;calculadora.c,22 :: 		Lcd_Init();                              // Inicializa Lcd
	LCALL _Lcd_Init+0
;calculadora.c,23 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Limpiar pantalla LCD
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;calculadora.c,24 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;calculadora.c,26 :: 		Lcd_Out(1, 2, "Calculador 8051");                 // Write message text on Lcd
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #2
	MOV FARG_LCD_Out_text+0, #?lstr1_calculadora+0
	LCALL _LCD_Out+0
;calculadora.c,28 :: 		do {
L_main0:
;calculadora.c,29 :: 		kp = 0;                                // Resetear variable de teclado
	MOV _kp+0, #0
;calculadora.c,31 :: 		do{
L_main3:
;calculadora.c,33 :: 		kp = Keypad_Key_Click();             // Almacena en kp la tecla presionada
	LCALL _Keypad_Key_Click+0
	MOV _kp+0, 0
;calculadora.c,34 :: 		}while (!kp);
	MOV A, R0
	JZ L_main3
;calculadora.c,36 :: 		switch (kp) {
	SJMP L_main6
;calculadora.c,37 :: 		case  1: kp = 1; break;                   // 1
L_main8:
	MOV _kp+0, #1
	LJMP L_main7
;calculadora.c,38 :: 		case  2: kp = 2; break;                   // 2
L_main9:
	MOV _kp+0, #2
	LJMP L_main7
;calculadora.c,39 :: 		case  3: kp = 3; break;                   // 3
L_main10:
	MOV _kp+0, #3
	LJMP L_main7
;calculadora.c,40 :: 		case  4: kp = 10; operacion[0]=43; break; // A (+)
L_main11:
	MOV _kp+0, #10
	MOV _operacion+0, #43
	LJMP L_main7
;calculadora.c,41 :: 		case  5: kp = 4; break;                   // 4
L_main12:
	MOV _kp+0, #4
	LJMP L_main7
;calculadora.c,42 :: 		case  6: kp = 5; break;                   // 5
L_main13:
	MOV _kp+0, #5
	LJMP L_main7
;calculadora.c,43 :: 		case  7: kp = 6; break;                   // 6
L_main14:
	MOV _kp+0, #6
	LJMP L_main7
;calculadora.c,44 :: 		case  8: kp = 11; operacion[0]=45; break; // B (-)
L_main15:
	MOV _kp+0, #11
	MOV _operacion+0, #45
	LJMP L_main7
;calculadora.c,45 :: 		case  9: kp = 7; break;                   // 7
L_main16:
	MOV _kp+0, #7
	LJMP L_main7
;calculadora.c,46 :: 		case 10: kp = 8; break;                   // 8
L_main17:
	MOV _kp+0, #8
	LJMP L_main7
;calculadora.c,47 :: 		case 11: kp = 9; break;                   // 9
L_main18:
	MOV _kp+0, #9
	LJMP L_main7
;calculadora.c,48 :: 		case 12: kp = 12; operacion[0]=120; break;// C (*)
L_main19:
	MOV _kp+0, #12
	MOV _operacion+0, #120
	LJMP L_main7
;calculadora.c,49 :: 		case 13: kp = 20; break;                  // C (Limpiar)
L_main20:
	MOV _kp+0, #20
	LJMP L_main7
;calculadora.c,50 :: 		case 14: kp = 0; break;                   // 0
L_main21:
	MOV _kp+0, #0
	LJMP L_main7
;calculadora.c,51 :: 		case 15: kp = 21; break;                  // # (=)
L_main22:
	MOV _kp+0, #21
	LJMP L_main7
;calculadora.c,52 :: 		case 16: kp = 13; operacion[0]=253; break;// D (/)
L_main23:
	MOV _kp+0, #13
	MOV _operacion+0, #253
	LJMP L_main7
;calculadora.c,53 :: 		}
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
	JNZ #3
	LJMP L_main14
	MOV A, _kp+0
	XRL A, #8
	JNZ #3
	LJMP L_main15
	MOV A, _kp+0
	XRL A, #9
	JNZ #3
	LJMP L_main16
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
;calculadora.c,55 :: 		if(9<kp && kp<14){
	CLR C
	MOV A, #9
	SUBB A, _kp+0
	JNC L_main26
	CLR C
	MOV A, _kp+0
	SUBB A, #14
	JNC L_main26
L__main35:
;calculadora.c,56 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;calculadora.c,57 :: 		IntToStr(num, txt);
	MOV FARG_IntToStr_input+0, _num+0
	MOV FARG_IntToStr_input+1, _num+1
	MOV FARG_IntToStr_output+0, #_txt+0
	LCALL _IntToStr+0
;calculadora.c,58 :: 		Lcd_Out(1,7,txt);
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #7
	MOV FARG_LCD_Out_text+0, #_txt+0
	LCALL _LCD_Out+0
;calculadora.c,59 :: 		Lcd_Out(1,13,operacion);
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #13
	MOV FARG_LCD_Out_text+0, #_operacion+0
	LCALL _LCD_Out+0
;calculadora.c,60 :: 		res=num;
	MOV _res+0, _num+0
	MOV _res+1, _num+1
;calculadora.c,61 :: 		num=0;
	MOV _num+0, #0
	MOV _num+1, #0
;calculadora.c,62 :: 		}
L_main26:
;calculadora.c,64 :: 		if(kp==21){
	MOV A, _kp+0
	XRL A, #21
	JZ #3
	LJMP L_main27
;calculadora.c,65 :: 		switch(operacion[0]){
	SJMP L_main28
;calculadora.c,66 :: 		case 43:  res=res+num; break;
L_main30:
	MOV A, _res+0
	ADD A, _num+0
	MOV _res+0, A
	MOV A, _res+1
	ADDC A, _num+1
	MOV _res+1, A
	SJMP L_main29
;calculadora.c,67 :: 		case 45:  res=res-num; break;
L_main31:
	CLR C
	MOV A, _res+0
	SUBB A, _num+0
	MOV _res+0, A
	MOV A, _res+1
	SUBB A, _num+1
	MOV _res+1, A
	SJMP L_main29
;calculadora.c,68 :: 		case 120: res=res*num; break;
L_main32:
	MOV R0, _res+0
	MOV R1, _res+1
	MOV R4, _num+0
	MOV R5, _num+1
	LCALL _Mul_16x16+0
	MOV _res+0, 0
	MOV _res+1, 1
	SJMP L_main29
;calculadora.c,69 :: 		case 253: res=res/num; break;
L_main33:
	MOV R4, _num+0
	MOV R5, _num+1
	MOV R0, _res+0
	MOV R1, _res+1
	LCALL _Div_16x16_S+0
	MOV _res+0, 0
	MOV _res+1, 1
	SJMP L_main29
;calculadora.c,70 :: 		}
L_main28:
	MOV A, _operacion+0
	XRL A, #43
	JZ L_main30
	MOV A, _operacion+0
	XRL A, #45
	JZ L_main31
	MOV A, _operacion+0
	XRL A, #120
	JZ L_main32
	MOV A, _operacion+0
	XRL A, #253
	JZ L_main33
L_main29:
;calculadora.c,71 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;calculadora.c,72 :: 		num=res;
	MOV _num+0, _res+0
	MOV _num+1, _res+1
;calculadora.c,73 :: 		}
L_main27:
;calculadora.c,75 :: 		if(kp<10){
	CLR C
	MOV A, _kp+0
	SUBB A, #10
	JNC L_main34
;calculadora.c,77 :: 		num=num*10+kp;
	MOV R0, _num+0
	MOV R1, _num+1
	MOV R4, #10
	MOV R5, #0
	LCALL _Mul_16x16+0
	MOV A, _kp+0
	ADD A, R0
	MOV _num+0, A
	CLR A
	ADDC A, R1
	MOV _num+1, A
;calculadora.c,78 :: 		}
L_main34:
;calculadora.c,80 :: 		IntToStr(num, txt);        // Transform counter value to string
	MOV FARG_IntToStr_input+0, _num+0
	MOV FARG_IntToStr_input+1, _num+1
	MOV FARG_IntToStr_output+0, #_txt+0
	LCALL _IntToStr+0
;calculadora.c,81 :: 		Lcd_Out(2, 10, txt);       // Display counter value on Lcd
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #10
	MOV FARG_LCD_Out_text+0, #_txt+0
	LCALL _LCD_Out+0
;calculadora.c,82 :: 		} while (1);
	LJMP L_main0
;calculadora.c,83 :: 		}
	SJMP #254
; end of _main
