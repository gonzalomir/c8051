char dato;
void main() {
     dato=1;
     while(1){
              if(dato!=128){
              dato=(dato<<1);
              }
              else{
                   dato=1;
              }
              P0=dato;
              Delay_ms(500);
     }
}