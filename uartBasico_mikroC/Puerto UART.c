char uart_rd;
sbit led at P2_0_bit;

void main() {

  UART1_Init(4800);               // Initialize UART module at 4800 bps
  Delay_ms(100);                  // Wait for UART module to stabilize

  UART1_Write_Text("Encender Led[e]\r");
  UART1_Write_Text("Apagar   Led[a]\r");

  while (1) {                     // Endless loop
    if (UART1_Data_Ready()) {     // If data is received,
      uart_rd = UART1_Read();     //   read the received data,
      UART1_Write(uart_rd);       //   and send data via UART
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