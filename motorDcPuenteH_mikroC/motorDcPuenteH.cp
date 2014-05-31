#line 1 "G:/icei/c8051/motorDcPuenteH_mikroC/motorDcPuenteH.c"
void motorAdelante(){
 P2_0_bit=1;
 P2_1_bit=0;
}

void motorAtras(){
 P2_0_bit=0;
 P2_1_bit=1;
}

void motorDetener(){
 P2_0_bit=0;
 P2_1_bit=0;
}

void main() {
 P2=0;
 while(1){
 motorAdelante();
 Delay_ms(2500);
 motorAtras();
 Delay_ms(5000);
 motorDetener();
 Delay_ms(2500);
 }
}
