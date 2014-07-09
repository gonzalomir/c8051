#line 1 "G:/icei/c8051/timers_LCD_mikroC/Temporizadores.c"

sbit LCD_RS at P2_0_bit;
sbit LCD_EN at P2_1_bit;
sbit LCD_D4 at P2_2_bit;
sbit LCD_D5 at P2_3_bit;
sbit LCD_D6 at P2_4_bit;
sbit LCD_D7 at P2_5_bit;


unsigned long clk;
char cad[11];

void Timer1InterruptHandler() iv IVT_ADDR_ET1{
 EA_bit = 0;

 TR1_bit = 0;
 TH1 = 0xFF;
 TL1 = 0x11;

 P0 = ~P0;

 EA_bit = 1;
 TR1_bit = 1;
}

void main() {
 P0 = 0;

 TF1_bit = 0;
 ET1_bit = 1;
 EA_bit = 1;

 GATE1_bit = 0;
 C_T1_bit = 0;
 M11_bit = 0;
 M01_bit = 1;

 TR1_bit = 0;
 TH1 = 0xFF;
 TL1 = 0xFF;
 TR1_bit = 1;

 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 clk = Get_Fosc_kHz()*1000;
 LongWordToStr(clk,cad);
 Lcd_Out(1,4,cad);
 clk=(clk/12);
 LongWordToStr(clk,cad);
 Lcd_Out(2,4,cad);

 while(1){

 }
}
