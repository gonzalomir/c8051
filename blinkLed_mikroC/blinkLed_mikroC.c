sbit led at P0_0_bit;
bit estado;

void main() {
     estado=1;
     while(1){
              led=estado;
              Delay_ms(333);
              estado=1-estado;
     }
}