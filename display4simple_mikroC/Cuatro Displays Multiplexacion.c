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
 0b01100111  //9
};code;
unsigned short numero_descompuesto[4];
int numero;
short cuentame;

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
     short aux=1;
     short i;
     P2=0;
     descomponer(num);
     for(i=3;i>=0;i--){
        P3=aux;
        P2=digitos[numero_descompuesto[i]];
        aux=(aux<<1);
        Delay_ms(12);
     }
}

void main() {
     numero=0;
     cuentame=0;
     while(1){
        printDisplay(numero);
        if(cuentame==10){
            numero++;
            cuentame=0;
        }
        cuentame++;
     }
}