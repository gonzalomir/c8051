//Conexiones modulo LCD
sbit LCD_RS at P2_0_bit;
sbit LCD_EN at P2_1_bit;
sbit LCD_D4 at P2_2_bit;
sbit LCD_D5 at P2_3_bit;
sbit LCD_D6 at P2_4_bit;
sbit LCD_D7 at P2_5_bit;
//Fin conexiones modulo LCD

unsigned long clk;
char cad[11];

void Timer1InterruptHandler() iv IVT_ADDR_ET1{
  EA_bit = 0;        // Limpiar bit de Interrupciones globales

  TR1_bit = 0;       // Stop Timer1
  TH1 = 0x00;        // Set Timer1 high byte
  TL1 = 0x01;        // Set Timer1 low byte

  P0 = ~P0;          // Toggle PORT0

  EA_bit = 1;        // Set global interrupt enable flag
  TR1_bit = 1;       // Run Timer1
}

void main() {
  P0  = 0;           // Initialize PORT0

  TF1_bit = 0;       // Ensure that Timer1 interrupt flag is cleared
  ET1_bit = 1;       // Enable Timer1 interrupt
  EA_bit  = 1;       // Set global interrupt enable

  GATE1_bit = 0;     // Clear this flag to enable Timer1 whenever TR1 bit is set.
  C_T1_bit  = 0;     // Set Timer operation: Timer1 counts the divided-down systam clock.
  M11_bit   = 0;     // M11_M01 = 01    =>   Mode 1(16-bit Timer/Counter)
  M01_bit   = 1;

  TR1_bit = 0;       // Turn off Timer1
  TH1 = 0x00;        // Set Timer1 high byte
  TL1 = 0x01;        // Set Timer1 low byte
  TR1_bit = 1;       // Run Timer1
  
  Lcd_Init();                //Iniciar el LCD
  Lcd_Cmd(_LCD_CLEAR);       //Limpiar la pantalla
  Lcd_Cmd(_LCD_CURSOR_OFF);  //Apagar el cursor
  clk = Get_Fosc_kHz()*1000;
  LongWordToStr(clk,cad);
  Lcd_Out(1,4,cad);
  clk=(clk/12);
  LongWordToStr(clk,cad);
  Lcd_Out(2,4,cad);

  while(1){
     
  }
}

