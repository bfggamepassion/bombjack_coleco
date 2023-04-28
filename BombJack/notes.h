#ifndef ___NOTES_H___
#define ___NOTES_H___

/*Tempo,Action(2bits)+Channel(2bits)+Volume(4bits),[Note]*/
/* Channel : 0,1,2 ou 3 --> Toutes les channels (Uniquement pour action volume) */
/* Action = 00 -> Joue la note  */
/* Action = 01 -> Modifie le volume */

#define DO2         ((2*12)+0)
#define DO2D_RE2B   ((2*12)+1)
#define RE2         ((2*12)+2)
#define RE2D_MI2B   ((2*12)+3)
#define MI2         ((2*12)+4)
#define FA2         ((2*12)+5)
#define FA2D_SOL2B  ((2*12)+6)
#define SOL2        ((2*12)+7)
#define SOL2B_LA2B  ((2*12)+8)
#define LA2         ((2*12)+9)
#define LA2D_SI2B   ((2*12)+10)
#define SI2         ((2*12)+11)

#define DO3         ((3*12)+0)
#define DO3D_RE3B   ((3*12)+1)
#define RE3         ((3*12)+2)
#define RE3D_MI3B   ((3*12)+3)
#define MI3         ((3*12)+4)
#define FA3         ((3*12)+5)
#define FA3D_SOL3B  ((3*12)+6)
#define SOL3        ((3*12)+7)
#define SOL3B_LA3B  ((3*12)+8)
#define LA3         ((3*12)+9)
#define LA3D_SI3B   ((3*12)+10)
#define SI3         ((3*12)+11)

#define DO4         ((4*12)+0)
#define DO4D_RE4B   ((4*12)+1)
#define RE4         ((4*12)+2)
#define RE4D_MI4B   ((4*12)+3)
#define MI4         ((4*12)+4)
#define FA4         ((4*12)+5)
#define FA4D_SOL4B  ((4*12)+6)
#define SOL4        ((4*12)+7)
#define SOL4B_LA4B  ((4*12)+8)
#define LA4         ((4*12)+9)
#define LA4D_SI4B   ((4*12)+10)
#define SI4         ((4*12)+11)

#define DO5         ((5*12)+0)
#define DO5D_RE5B   ((5*12)+1)
#define RE5         ((5*12)+2)
#define RE5D_MI5B   ((5*12)+3)
#define MI5         ((5*12)+4)
#define FA5         ((5*12)+5)
#define FA5D_SOL5B  ((5*12)+6)
#define SOL5        ((5*12)+7)
#define SOL5B_LA5B  ((5*12)+8)
#define LA5         ((5*12)+9)
#define LA5D_SI5B   ((5*12)+10)
#define SI5         ((5*12)+11)

#define DO6         ((6*12)+0)
#define DO6D_RE6B   ((6*12)+1)
#define RE6         ((6*12)+2)
#define RE6D_MI6B   ((6*12)+3)
#define MI6         ((6*12)+4)
#define FA6         ((6*12)+5)
#define FA6D_SOL6B  ((6*12)+6)
#define SOL6        ((6*12)+7)
#define SOL6B_LA6B  ((6*12)+8)
#define LA6         ((6*12)+9)
#define LA6D_SI6B   ((6*12)+10)
#define SI6         ((6*12)+11)

#define DO7         ((7*12)+0)
#define DO7D_RE7B   ((7*12)+1)
#define RE7         ((7*12)+2)
#define RE7D_MI7B   ((7*12)+3)
#define MI7         ((7*12)+4)
#define FA7         ((7*12)+5)
#define FA7D_SOL7B  ((7*12)+6)
#define SOL7        ((7*12)+7)
#define SOL7B_LA7B  ((7*12)+8)
#define LA7         ((7*12)+9)
#define LA7D_SI7B   ((7*12)+10)
#define SI7         ((7*12)+11)


#define ACTION_PLAY     0
#define ACTION_VOLUME   64
#define ACTION_END		128

#define CHANNEL_0       0
#define CHANNEL_1       16
#define CHANNEL_2       32
#define CHANNEL_ALL     48

#define VOL0            15
#define VOL1            14
#define VOL2            13
#define VOL3            12
#define VOL4            11
#define VOL5            10
#define VOL6            9
#define VOL7            8
#define VOL8            7
#define VOL9            6
#define VOL10           5
#define VOL11           4
#define VOL12           3
#define VOL13           2
#define VOL14           1
#define VOL15           0

#define NULL 0

#define LOOP_OFF 0
#define LOOP_ON 1

#define OUI 1
#define NON 1


void sound_nmi(void);
void startmusic(unsigned char *pDat,unsigned char start,unsigned char loop,unsigned char hz);
void stopmusic();
void startsfxPrio(unsigned char *pDat, unsigned char start);
void startsfx(unsigned char *pDat, unsigned char start);

#endif
