unsigned short dato;

void main() {
     dato=1;
     P2=0;
     while(1){
         switch(P2){
            case 1:
                 if(dato!=1){
                    dato=(dato>>1);
                 }
                 else{
                    dato=128;
                 }
                 while(P2==1);
                 break;
            case 2:
                 if(dato!=128){
                    dato=(dato<<1);
                 }
                 else{
                    dato=1;
                 }
                 while(P2==2);
                 break;
         }
         Delay_ms(15);
         P0=dato;
     }
}