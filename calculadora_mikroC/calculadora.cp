#line 1 "G:/icei/c8051/calculadora_mikroC/calculadora.c"
unsigned short kp;
int num=0;
int res=0;

char txt[7];
char operacion[1];

char keypadPort at P0;


sbit LCD_RS at P2_0_bit;
sbit LCD_EN at P2_1_bit;

sbit LCD_D4 at P2_2_bit;
sbit LCD_D5 at P2_3_bit;
sbit LCD_D6 at P2_4_bit;
sbit LCD_D7 at P2_5_bit;


void main() {
 Keypad_Init();
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

 Lcd_Out(1, 2, "Calculador 8051");

 do {
 kp = 0;

 do{

 kp = Keypad_Key_Click();
 }while (!kp);

 switch (kp) {
 case 1: kp = 1; break;
 case 2: kp = 2; break;
 case 3: kp = 3; break;
 case 4: kp = 10; operacion[0]=43; break;
 case 5: kp = 4; break;
 case 6: kp = 5; break;
 case 7: kp = 6; break;
 case 8: kp = 11; operacion[0]=45; break;
 case 9: kp = 7; break;
 case 10: kp = 8; break;
 case 11: kp = 9; break;
 case 12: kp = 12; operacion[0]=120; break;
 case 13: kp = 20; break;
 case 14: kp = 0; break;
 case 15: kp = 21; break;
 case 16: kp = 13; operacion[0]=253; break;
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
 case 43: res=res+num; break;
 case 45: res=res-num; break;
 case 120: res=res*num; break;
 case 253: res=res/num; break;
 }
 Lcd_Cmd(_LCD_CLEAR);
 num=res;
 }

 if(kp<10){

 num=num*10+kp;
 }

 IntToStr(num, txt);
 Lcd_Out(2, 10, txt);
 } while (1);
}
