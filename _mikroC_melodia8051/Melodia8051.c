#define C4 261
#define Csh4 277
#define D4 294
#define Dsh4 311
#define E4 3330
#define F4 349
#define Fsh4 370
#define G4 392
#define Gsh4 415
#define A4 440
#define Ash4 466
#define B4 494

#define C5 523
#define Csh5 554
#define D 587
#define Dsh5 622
#define E 659
#define F 698
#define Fsh5 740
#define G5 784
#define Gsh5 831
#define A5 880
#define Ash5 932
#define B5 987

#define C6 1046
#define Csh6 1109
#define D6 1174
#define Dsh6 1244
#define E6 1318
#define F6 1397
#define Fsh6 1480
#define G6 1568
#define Gsh6 1661
#define A6 1760
#define Ash6 1864
#define B6 1975

#define C7 2093
#define Csh7 2217
#define D7 2349
#define Dsh7 2489
#define E7 2637
#define F7 2794
#define Fsh7 2960
#define G7 3136
#define Gsh7 3322
#define A7 3520
#define Ash7 3729
#define B7 3951

#define DUR 300 //milisegundos

sbit Sound_Play_Pin at P0_3_bit;

void main() {

   do{
      Sound_Play(Csh6, DUR/2);
      Sound_Play(B5, DUR/2);
      Sound_Play(Csh6, DUR/2);
      Sound_Play(Fsh5, 2*DUR);

      Sound_Play(D6, DUR/2);
      Sound_Play(Csh6, DUR/2);
      Sound_Play(D6, DUR/2);
      Sound_Play(Csh6, DUR/2);
      Sound_Play(B5, 2*DUR);

      Sound_Play(D6, DUR/2);
      Sound_Play(Csh6, DUR/2);
      Sound_Play(D6, DUR/2);
      Sound_Play(Fsh5, 2*DUR);

      Sound_Play(B5, DUR/2);
      Sound_Play(A5, DUR/2);
      Sound_Play(B5, DUR/2);
      Sound_Play(A5, DUR/2);
      Sound_Play(Gsh5, DUR/2);
      Sound_Play(B5, DUR/2);
      Sound_Play(A5, 2*DUR);

      Sound_Play(Gsh5, DUR/2);
      Sound_Play(A5, DUR/2);
      Sound_Play(B5, 2*DUR);

      Sound_Play(A5, DUR/2);
      Sound_Play(B5, DUR/2);
      Sound_Play(Csh6, DUR/2);
      Sound_Play(B5, DUR/2);
      Sound_Play(A5, DUR/2);
      Sound_Play(Gsh5, DUR/2);
      Sound_Play(Fsh5, 2*DUR);

      Sound_Play(D6, 2*DUR);
      Sound_Play(Csh6, 2*DUR);

      Sound_Play(Csh6, DUR);
      Sound_Play(Csh6, DUR);
      Sound_Play(D6, DUR);
      Sound_Play(Csh6, DUR/2);
      Sound_Play(B5, DUR/2);
      Sound_Play(Csh6, 2*DUR);
      Delay_ms(1000);
   }while(1);
}