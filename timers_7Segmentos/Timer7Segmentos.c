const unsigned short digitos[10]={
 //.gfedcba
 0b00111111, //0
 0b00000110, //1
 0b01011011, //2
 0b01001111, //3
 0b01100110, //4
 0b01101101, //5
 0b01111101, //6
 0b00000111, //7
 0b01111111, //8
 0b01100111 //9
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
  EA_bit = 0; // Deshabilita las Interrupciones globales
  TR0_bit = 0; // Detener el Timer0
  TH0 = 0xF0; // Setear el Timer0 high byte
  TL0 = 0x60; // Setear el Timer0 low byte

  P0=0;
  P2=digitos[numero_descompuesto[3-indice]];
  P0=pines[indice];
  indice++;
  if(indice==4){
    indice=0;
  }


  TF0_bit = 0;
  EA_bit = 1; // Habilitar las Interrupciones globales
  TR0_bit = 1; // Correr el Timer0
}

void main() {
  //Configurar el Timer0
  TF0_bit = 0; // Ensure that Timer0 interrupt flag is cleared
  ET0_bit = 1; // Habilitar la interrupcion del Timer0
  EA_bit = 1; // Habilitar las Interrupciones globales

  GATE0_bit = 1; // Poner a cero el bit GATE del Timer0
  C_T0_bit = 0; // Configura como contador o temporizador el Timer0
  M10_bit = 0; // M10_M00 = 01 => Mode 1(16-bit Timer/Counter)
  M00_bit = 1;


  TR0_bit = 0; // Apagar el Timer0
  TH0 = 0x0F; // Setear el Timer0 high byte
  TL0 = 0xA0; // Setear el Timer0 low byte
  TR0_bit = 1; // Correr el Timer0
  //Fin configuracion Timer0
  
  //Programa Principal
  while(1){
     printDisplay(numero);
     numero++;
     Delay_ms(1000);
  }
}