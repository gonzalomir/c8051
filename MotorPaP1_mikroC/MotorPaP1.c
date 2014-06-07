const char paso_simple[4]={1,2,4,8};data;
const char paso_doble[4]={3,6,12,9};data;
const char medio_paso[8]={1,3,2,6,4,12,8,9};data;
short i;

void main(){
  i=0;
  while(1){
    P0=0;
    for(i=0;i<4;i++){
       P0=paso_simple[i];
       Delay_ms(250);
    }
    P0=0;
    Delay_ms(1000);
  }
}