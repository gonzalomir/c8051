#line 1 "G:/icei/c8051/displayContador_mikroC/DisplayContador.c"
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
