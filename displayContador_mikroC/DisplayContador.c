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

void main() {
     short contador=0;
     do{
        P2=digitos[contador];
        contador++;
        Delay_ms(1000);
        if(contador==11)
           contador=0;
     }while(1);
}