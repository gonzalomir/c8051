const char paso_simple[4]={1,2,4,8};code;
const char paso_doble[4]={3,6,12,9};code;
const char medio_paso[8]={1,3,2,6,4,12,8,9};code;

unsigned short motor_uno,motor_dos;
short i,j;

void main() {
     P0=255; //Puerto 0 como entrada

     motor_uno=0;
     motor_dos=0;

     while(1){
        switch(P0){
            case 1:
               i++;
            break;
            case 2:
               i--;
            break;
            case 4:
               j++;
            break;
            case 8:
               j--;
            break;
        }
        if(i==4)
           i=0;
        if(i==-1)
           i=3;
        if(j==4)
           j=0;
        if(j==-1)
           j=3;
        motor_uno=paso_simple[i];
        motor_dos=paso_doble[j];
        motor_dos=(motor_dos<<4);
        P2=motor_uno+motor_dos;
        Delay_ms(200);
     }
}