//Conexiones modulo LCD
sbit LCD_RS at P2_0_bit;
sbit LCD_EN at P2_1_bit;
sbit LCD_D4 at P2_2_bit;
sbit LCD_D5 at P2_3_bit;
sbit LCD_D6 at P2_4_bit;
sbit LCD_D7 at P2_5_bit;
//Fin conexiones modulo LCD

int contador;   //Contador de tipo entero
char cad[7];    //Para convertir de Entero a cadena
                //la cadena debe tener una dimension de 7
char txt1[]="Bienvenido";//Carga un texto

void main() {
     contador=0;                //Inicializamos el contador en 0
     Lcd_Init();                //Iniciar el LCD
     Lcd_Cmd(_LCD_CLEAR);       //Limpiar la pantalla
     Lcd_Cmd(_LCD_CURSOR_OFF);  //Apagar el cursor
     Lcd_Out(1,4,txt1);         //Mostrar mensaje txt1 en la primera fila, columna 4
     Delay_ms(500);             //Espera de medio segundo
     while(1){
         IntToStr(contador,cad);//Convertir el entero 'contador' en cadena 'cad'
         Lcd_Out(2,11,cad);     //Mostrar la cad en la segunda fila, columna 11
         contador++;            //Incremantar contador en 1
         Delay_ms(250);         //Espera de 250 milisegundos
         if(contador==1001)     //Reinicia el contador al llegar a 1001
            contador=0;
  }
}