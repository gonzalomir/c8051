#line 1 "G:/icei/c8051/uartBasico_mikroC/Puerto UART.c"
char uart_rd;
sbit led at P2_0_bit;

void main() {

 UART1_Init(4800);
 Delay_ms(100);

 UART1_Write_Text("Encender Led[e]\r");
 UART1_Write_Text("Apagar   Led[a]\r");

 while (1) {
 if (UART1_Data_Ready()) {
 uart_rd = UART1_Read();
 UART1_Write(uart_rd);
 switch(uart_rd){
 case 'e':
 led=1;
 break;
 case 'a':
 led=0;
 break;
 }
 }
 }
}
