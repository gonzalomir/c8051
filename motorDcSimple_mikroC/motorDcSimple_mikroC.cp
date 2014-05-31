#line 1 "G:/icei/c8051/motorDcSimple_mikroC/motorDcSimple_mikroC.c"
sbit motor at P2_0_bit;

void main() {
 while(1){
 motor=0;
 Delay_ms(3000);
 motor=1;
 Delay_ms(1500);
 }
}
