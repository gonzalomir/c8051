#line 1 "G:/icei/c8051/boton_mikroC/boton_mikroC.c"
sbit boton at P0_0_bit;
sbit led at P2_0_bit;
bit estado;

void main() {
 P0=255;
 estado=0;
 do{
 if(boton){
 led=1;
 }
 else{
 led=0;
 }
 }while(1);
}
