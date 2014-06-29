
_main:
	MOV SP+0, #128
;LCD_Contador.c,15 :: 		void main() {
;LCD_Contador.c,16 :: 		contador=0;                //Inicializamos el contador en 0
	MOV _contador+0, #0
	MOV _contador+1, #0
;LCD_Contador.c,17 :: 		Lcd_Init();                //Iniciar el LCD
	LCALL _Lcd_Init+0
;LCD_Contador.c,18 :: 		Lcd_Cmd(_LCD_CLEAR);       //Limpiar la pantalla
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;LCD_Contador.c,19 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);  //Apagar el cursor
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;LCD_Contador.c,20 :: 		Lcd_Out(1,4,txt1);         //Mostrar mensaje txt1 en la primera fila, columna 4
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #4
	MOV FARG_LCD_Out_text+0, #_txt1+0
	LCALL _LCD_Out+0
;LCD_Contador.c,21 :: 		Delay_ms(500);             //Espera de medio segundo
	MOV R5, 7
	MOV R6, 86
	MOV R7, 60
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;LCD_Contador.c,22 :: 		while(1){
L_main0:
;LCD_Contador.c,23 :: 		IntToStr(contador,cad);//Convertir el entero 'contador' en cadena 'cad'
	MOV FARG_IntToStr_input+0, _contador+0
	MOV FARG_IntToStr_input+1, _contador+1
	MOV FARG_IntToStr_output+0, #_cad+0
	LCALL _IntToStr+0
;LCD_Contador.c,24 :: 		Lcd_Out(2,11,cad);     //Mostrar la cad en la segunda fila, columna 11
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #11
	MOV FARG_LCD_Out_text+0, #_cad+0
	LCALL _LCD_Out+0
;LCD_Contador.c,25 :: 		contador++;            //Incremantar contador en 1
	MOV A, #1
	ADD A, _contador+0
	MOV _contador+0, A
	MOV A, #0
	ADDC A, _contador+1
	MOV _contador+1, A
;LCD_Contador.c,26 :: 		Delay_ms(250);         //Espera de 250 milisegundos
	MOV R5, 4
	MOV R6, 43
	MOV R7, 157
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;LCD_Contador.c,27 :: 		if(contador==1001)     //Reinicia el contador al llegar a 1001
	MOV A, _contador+0
	XRL A, #233
	JNZ L__main3
	MOV A, _contador+1
	XRL A, #3
L__main3:
	JNZ L_main2
;LCD_Contador.c,28 :: 		contador=0;
	MOV _contador+0, #0
	MOV _contador+1, #0
L_main2:
;LCD_Contador.c,29 :: 		}
	SJMP L_main0
;LCD_Contador.c,30 :: 		}
	SJMP #254
; end of _main
