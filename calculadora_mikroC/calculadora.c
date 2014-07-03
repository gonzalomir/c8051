unsigned short kp;
int num=0;
int res=0;

char txt[7];
char operacion[1];

char keypadPort at P0; //Puerto Keypad 4x4

//Pines conexion LCD
sbit LCD_RS at P2_0_bit;
sbit LCD_EN at P2_1_bit;

sbit LCD_D4 at P2_2_bit;
sbit LCD_D5 at P2_3_bit;
sbit LCD_D6 at P2_4_bit;
sbit LCD_D7 at P2_5_bit;
//Fin Pines conexion LCD

void main() {
  Keypad_Init();                           // Inicializa Keypad
  Lcd_Init();                              // Inicializa Lcd
  Lcd_Cmd(_LCD_CLEAR);                     // Limpiar pantalla LCD
  Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off

  Lcd_Out(1, 2, "Calculador 8051");                 // Write message text on Lcd

  do {
    kp = 0;                                // Resetear variable de teclado
    //Espera que se presione una tecla
    do{
      // kp = Keypad_Key_Press();          // Almacena en kp la tecla presionada
      kp = Keypad_Key_Click();             // Almacena en kp la tecla presionada
    }while (!kp);
    //Transforma la tecla presionada a un codigo ASCII
    switch (kp) {
      case  1: kp = 1; break;                   // 1
      case  2: kp = 2; break;                   // 2
      case  3: kp = 3; break;                   // 3
      case  4: kp = 10; operacion[0]=43; break; // A (+)
      case  5: kp = 4; break;                   // 4
      case  6: kp = 5; break;                   // 5
      case  7: kp = 6; break;                   // 6
      case  8: kp = 11; operacion[0]=45; break; // B (-)
      case  9: kp = 7; break;                   // 7
      case 10: kp = 8; break;                   // 8
      case 11: kp = 9; break;                   // 9
      case 12: kp = 12; operacion[0]=120; break;// C (*)
      case 13: kp = 20; break;                  // C (Limpiar)
      case 14: kp = 0; break;                   // 0
      case 15: kp = 21; break;                  // # (=)
      case 16: kp = 13; operacion[0]=253; break;// D (/)
    }
    
    if(9<kp && kp<14){
        Lcd_Cmd(_LCD_CLEAR);
        IntToStr(num, txt);
        Lcd_Out(1,7,txt);
        Lcd_Out(1,13,operacion);
        res=num;
        num=0;
    }

    if(kp==21){
       switch(operacion[0]){
          case 43:  res=res+num; break;
          case 45:  res=res-num; break;
          case 120: res=res*num; break;
          case 253: res=res/num; break;
       }
       Lcd_Cmd(_LCD_CLEAR);
       num=res;
    }

     if(kp<10){
        //Lcd_Cmd(_LCD_CLEAR);
        num=num*10+kp;
    }

    IntToStr(num, txt);        // Transform counter value to string
    Lcd_Out(2, 10, txt);       // Display counter value on Lcd
  } while (1);
}