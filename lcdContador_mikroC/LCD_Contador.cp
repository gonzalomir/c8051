#line 1 "G:/icei/c8051/lcdContador_mikroC/LCD_Contador.c"

sbit LCD_RS at P2_0_bit;
sbit LCD_EN at P2_1_bit;
sbit LCD_D4 at P2_2_bit;
sbit LCD_D5 at P2_3_bit;
sbit LCD_D6 at P2_4_bit;
sbit LCD_D7 at P2_5_bit;


int contador;
char cad[7];

char txt1[]="Bienvenido";

void main() {
 contador=0;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,4,txt1);
 Delay_ms(500);
 while(1){
 IntToStr(contador,cad);
 Lcd_Out(2,11,cad);
 contador++;
 Delay_ms(250);
 if(contador==1001)
 contador=0;
 }
}
