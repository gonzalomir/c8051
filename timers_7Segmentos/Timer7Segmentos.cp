#line 1 "G:/icei/c8051/timers_7Segmentos/Timer7Segmentos.c"
const unsigned short digitos[10]={

 0b00111111,
 0b00000110,
 0b01011011,
 0b01001111,
 0b01100110,
 0b01101101,
 0b01111101,
 0b00000111,
 0b01111111,
 0b01100111
};code;

int numero;
short indice=0;
const unsigned short pines[4]={1,2,4,8};
unsigned short numero_descompuesto[4];

void descomponer(int num){
 short i;
 int aux;
 for(i=0;i<4;i++)
 numero_descompuesto[i]=0;
 i=0;
 while(num!=0){
 aux=num/10;
 numero_descompuesto[i]=num-(aux*10);
 num=aux;
 i++;
 }
}

void printDisplay(int num){
 descomponer(num);
}

void updateDisplay() iv IVT_ADDR_ET0 ilevel 0 ics ICS_AUTO {
 EA_bit = 0;
 TR0_bit = 0;
 TH0 = 0xF0;
 TL0 = 0x60;

 P0=0;
 P2=digitos[numero_descompuesto[3-indice]];
 P0=pines[indice];
 indice++;
 if(indice==4){
 indice=0;
 }


 TF0_bit = 0;
 EA_bit = 1;
 TR0_bit = 1;
}

void main() {

 TF0_bit = 0;
 ET0_bit = 1;
 EA_bit = 1;

 GATE0_bit = 1;
 C_T0_bit = 0;
 M10_bit = 0;
 M00_bit = 1;


 TR0_bit = 0;
 TH0 = 0x0F;
 TL0 = 0xA0;
 TR0_bit = 1;



 while(1){
 printDisplay(numero);
 numero++;
 Delay_ms(1000);
 }
}
