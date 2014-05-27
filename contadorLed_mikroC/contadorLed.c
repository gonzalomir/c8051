void main() {
     char contador=0;
     while(1){
        P0=contador;
        if(contador==255){
          contador=0;
        }
        else{
          contador++;
        }
        Delay_ms(200);
     }
}
