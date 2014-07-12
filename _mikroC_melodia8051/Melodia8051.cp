#line 1 "G:/icei/c8051/_mikroC_melodia8051/Melodia8051.c"
#line 55 "G:/icei/c8051/_mikroC_melodia8051/Melodia8051.c"
sbit Sound_Play_Pin at P0_3_bit;

void main() {

 do{
 Sound_Play( 1109 ,  300 /2);
 Sound_Play( 987 ,  300 /2);
 Sound_Play( 1109 ,  300 /2);
 Sound_Play( 740 , 2* 300 );

 Sound_Play( 1174 ,  300 /2);
 Sound_Play( 1109 ,  300 /2);
 Sound_Play( 1174 ,  300 /2);
 Sound_Play( 1109 ,  300 /2);
 Sound_Play( 987 , 2* 300 );

 Sound_Play( 1174 ,  300 /2);
 Sound_Play( 1109 ,  300 /2);
 Sound_Play( 1174 ,  300 /2);
 Sound_Play( 740 , 2* 300 );

 Sound_Play( 987 ,  300 /2);
 Sound_Play( 880 ,  300 /2);
 Sound_Play( 987 ,  300 /2);
 Sound_Play( 880 ,  300 /2);
 Sound_Play( 831 ,  300 /2);
 Sound_Play( 987 ,  300 /2);
 Sound_Play( 880 , 2* 300 );

 Sound_Play( 831 ,  300 /2);
 Sound_Play( 880 ,  300 /2);
 Sound_Play( 987 , 2* 300 );

 Sound_Play( 880 ,  300 /2);
 Sound_Play( 987 ,  300 /2);
 Sound_Play( 1109 ,  300 /2);
 Sound_Play( 987 ,  300 /2);
 Sound_Play( 880 ,  300 /2);
 Sound_Play( 831 ,  300 /2);
 Sound_Play( 740 , 2* 300 );

 Sound_Play( 1174 , 2* 300 );
 Sound_Play( 1109 , 2* 300 );

 Sound_Play( 1109 ,  300 );
 Sound_Play( 1109 ,  300 );
 Sound_Play( 1174 ,  300 );
 Sound_Play( 1109 ,  300 /2);
 Sound_Play( 987 ,  300 /2);
 Sound_Play( 1109 , 2* 300 );
 Delay_ms(1000);
 }while(1);
}
