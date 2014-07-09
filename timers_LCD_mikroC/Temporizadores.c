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
  EA_bit = 0;        // Deshabilita las Interrupciones globales

  TR1_bit = 0;       // Detener el Timer1
  TH1 = 0xFF;        // Setear el Timer1 high byte
  TL1 = 0x11;        // Setear el Timer1 low byte

  P0 = ~P0;          // Toggle PORT0

  EA_bit = 1;        // Habilitar las Interrupciones globales
  TR1_bit = 1;       // Correr el Timer1
}

void main() {
  P0  = 0;           // Inicializa PORT0

  TF1_bit = 0;       // Ensure that Timer1 interrupt flag is cleared
  ET1_bit = 1;       // Habilitar la interrupcion del Timer1
  EA_bit  = 1;       // Habilitar las Interrupciones globales

  GATE1_bit = 0;     // Poner a cero el bit GATE del Timer1
  C_T1_bit  = 0;     // Configura como contador o temporizador el Timer1
  M11_bit   = 0;     // M11_M01 = 01    =>   Mode 1(16-bit Timer/Counter)
  M01_bit   = 1;

  TR1_bit = 0;       // Apagar el Timer1
  TH1 = 0xFF;        // Set Timer1 high byte
  TL1 = 0xFF;        // Set Timer1 low byte
  TR1_bit = 1;       // Correr el Timer1
  
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