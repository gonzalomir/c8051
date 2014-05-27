sbit boton at P0_0_bit;
sbit led at P2_0_bit;
bit estado;

void main() {
     P0=255;//Configura todos los pines del puerto 0 como entradas
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