/**************************************************/
/**************************************************/
/*** BOMBJACK *************************************/
/**************************************************/
#include <coleco.h>
#include <getput1.h>
#include <comp.h>
#include "notes.h"

#define chrtab  0x1800 /* écran en linéaire */
#define chrgen  0x0000 /* table des caractères */
#define coltab  0x2000 /* couleur des caractères */
#define sprtab  0x3800 /* sprite_pattern_table */
#define sprgen  0x1b00 /* sprite_attribute_table */
#define buffer  0x1c00 /* buffer screen 2 */

#define SPATTERN0	0
#define SPATTERN1	4
#define SPATTERN2	8
#define SPATTERN3	12
#define SPATTERN4	16
#define SPATTERN5	20
#define SPATTERN6	24
#define SPATTERN7	28
#define SPATTERN8	32
#define SPATTERN9	36
#define SPATTERN10	40
#define SPATTERN11	44
#define SPATTERN12	48
#define SPATTERN13	52
#define SPATTERN14	56
#define SPATTERN15	60
#define SPATTERN16	64
#define SPATTERN17	68
#define SPATTERN18	72
#define SPATTERN19	76
#define SPATTERN20	80
#define SPATTERN21	84
#define SPATTERN22	88
#define SPATTERN23	92
#define SPATTERN24	96
#define SPATTERN25	100
#define SPATTERN26	104
#define SPATTERN27	108
#define SPATTERN28	112
#define SPATTERN29	116
#define SPATTERN30	120
#define SPATTERN31	124
#define SPATTERN32	128
#define SPATTERN33	132
#define SPATTERN34	136
#define SPATTERN35	140
#define SPATTERN36	144
#define SPATTERN37	148
#define SPATTERN38	152
#define SPATTERN39	156
#define SPATTERN40	160
#define SPATTERN41	164
#define SPATTERN42	168
#define SPATTERN43	172
#define SPATTERN44	176
#define SPATTERN45	180
#define SPATTERN46	184
#define SPATTERN47	188
#define SPATTERN48	192
#define SPATTERN49	196
#define SPATTERN50	200
#define SPATTERN51	204
#define SPATTERN52	208
#define SPATTERN53	212
#define SPATTERN54	216
#define SPATTERN55	220
#define SPATTERN56	224
#define SPATTERN57	228
#define SPATTERN58	232
#define SPATTERN59	236
#define SPATTERN60	240
#define SPATTERN61	244
#define SPATTERN62	248
#define SPATTERN63	252

#define PLAYER_CORPS 0
#define PLAYER_CORPS_COLOR 4

#define PLAYER_VISAGE 1
#define PLAYER_VISAGE_COLOR 15

#define PLAYER_CAPE 2
#define PLAYER_CAPE_COLOR 8

#define SPRITE_ETINCELLE 9

#define GRAV 1

#define BOMB_NORMAL 1
#define BOMB_ALLUME 2
#define BOMB_DETRUIT 255
#define BOMB_NULL 254


#define SAUT 1
#define NOACTION 0

#define ENLAIR 1
#define AUSOL 0

#define MAXBOMB 30 // TODO : VERIFIER LE MAX DE BOMBE DANS LES NIVEAUX SI POSSIBLE LIBERER MEMOIRE
#define MAXENNEMY 8

#define S_TRUE 1
#define S_FALSE 0

#define INACTIF 204
#define INVISIBLE 203

#define WORKFLOW_SPLASH 0
#define WORKFLOW_TITLE 1
#define WORKFLOW_NEXTLEVEL 2
#define WORKFLOW_GAMEOVER 3
#define WORKFLOW_GAME 4
#define WORKFLOW_LOOSE_LIFE 5

#define E_MOMIE	0
#define E_VULTURE 1
#define E_CLUB	2
#define E_UFO 3
#define E_ORB 4
#define E_SPHERE 5
#define E_BONUS 6
#define E_SCORE 7
#define E_ETINCELLE 8

#define HAUT 1
#define BAS 2
#define GAUCHE 4
#define DROITE 8

unsigned char cheat;
unsigned char gameHz;
byte perfect;
byte color_logo;


unsigned char control;
unsigned char dummy;
#define SWITCH_IN_BANK0		{ dummy=(*(volatile unsigned char*)0xFFFC); }
#define SWITCH_IN_BANK1		{ dummy=(*(volatile unsigned char*)0xFFFD); }

/*extern const byte title[];*/


extern const unsigned char sfx_jump[];
extern const unsigned char sfx_catch[];
extern const unsigned char sfx_stationaire[];
extern const unsigned char tune_ingame[];
extern const unsigned char tune_bonus[];
extern const unsigned char tune_gameOver[];
extern const unsigned char tune_intro[];

extern const byte* const levels_p[];
extern const byte* const levels_b[];
extern const byte SPATTERNRLE[];

/* TITRE */
extern const byte TITLE_NAMERLE[];
extern const byte TITLE_PATTERNRLE[];
extern const byte TITLE_COLORRLE[];

extern const byte TITLECOLOR_NAMERLE[];
extern const byte TITLECOLOR_PATTERNRLE[];
extern const byte TITLECOLOR_COLORRLE[];

/* CHATEAU */
extern const byte FOND1_NAMERLE[];
extern const byte FOND1_PATTERNRLE[];
extern const byte FOND1_COLORRLE[];

/* IMMEUBLE */
extern const byte FOND2_NAMERLE[];
extern const byte FOND2_PATTERNRLE[];
extern const byte FOND2_COLORRLE[];

/* SPHYNX */
extern const byte FOND3_NAMERLE[];
extern const byte FOND3_PATTERNRLE[];
extern const byte FOND3_COLORRLE[];

/* TEMPLE */
extern const byte FOND4_NAMERLE[];
extern const byte FOND4_PATTERNRLE[];
extern const byte FOND4_COLORRLE[];

/* VILLE DE NUIT */
extern const byte FOND5_NAMERLE[];
extern const byte FOND5_PATTERNRLE[];
extern const byte FOND5_COLORRLE[];

extern const byte FONT_NAMERLE[];
extern const byte FONT_PATTERNRLE[];
extern const byte FONT_COLORRLE[];

const byte tileset_pattern[] = {
    0,254,253,252,143,63,127,24,227,199,191,4,249,0,252,254,254,207,223,255,255,252,0,127,63,143,238,230,198,14,30,15,252,249,227,161,30,0,133,7,0,0,126,126,94,125,0,23,160,12,66,126,0,48,0,127,0,96,127,42,0,255,9,0,4,136,1,254,250,0,2,254,191,11,255,255,255,240
};

const byte tileset_color[] = {
    18,81,0,129,0,54,143,143,7,231,9,129,163,0,26,241,0,161,231,0,246,15,252,23,0,255,255,255,255,192
};

typedef struct
{
    int vel;
    int vel_cst;
    unsigned int posx;
    unsigned int posy;
    int move;
    byte etat;
    byte dontmovey;
    byte regard;
    unsigned int score;
    byte nblives;
} s_player;

volatile s_player player;

//sprite_t bsprites[32];
byte p_source;
byte nb_source;

typedef struct
{
    byte x;
    byte y;
    byte allume;
} s_bomb;

volatile s_bomb bomb[MAXBOMB]; // 90 octets en mémoire
byte bombeAllumeeNiveau; // Y'à t'il une bombe allumée dans le niveau ?
byte nbBombLevel;
byte nbEnnemyLevel;

byte bonusEnCours; // On ne crée pas d'ennemy pendant un bonus en cours.
int ennBonus;   // Durée du bonus quand il est attrapé
byte cpt;

typedef struct
{
    byte type;
    byte type_sauvegarde;
    byte sprno;
    byte r1,r2,r3,r5;
    char r6;	// registres "interne" des ennemys
    byte cx,cy,c; // Pixel de colision avec le décor + résultat de collision
    byte nmiCol; // Active t'on la collision NMI ?

    char direction_x; // Dans quelle direction x + vitesse?
    char direction_y; // Dans quelle direction y + vitesse?
    byte basePattern;
} s_ennemy;

volatile s_ennemy ennemy[MAXENNEMY];

/* Position x et y de ou vont être créé les ennemys */
unsigned int	ticks;
byte	ennemy_generator_x;
byte	ennemy_generator_y;

const byte bombGfx[4]= {244,245,246,247};

/* Couleur des bombes du niveau 1 : chauteau*/
/* Couleur des bombes du niveau 1 : chauteau*/
 static const byte bombL1C244P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL1C245P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL1C244P2[8] = {0x21,0x21,0x21,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL1C245P2[8] = {0x21,0x21,0x21,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL1C244P3[8] = {0x21,0x21,0x21,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL1C245P3[8] = {0x21,0x21,0x21,0x81,0x81,0x81,0x81,0x81};

static  const byte bombL2C244P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL2C245P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL2C244P2[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL2C245P2[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL2C244P3[8] = {0x41,0x41,0x41,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL2C245P3[8] = {0x41,0x41,0x41,0x81,0x81,0x81,0x81,0x81};

 static const byte bombL3C244P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL3C245P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL3C244P2[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL3C245P2[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL3C244P3[8] = {0xB1,0xB1,0xB1,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL3C245P3[8] = {0xB1,0xB1,0xB1,0x81,0x81,0x81,0x81,0x81};

 static const byte bombL4C244P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL4C245P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL4C244P2[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL4C245P2[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL4C244P3[8] = {0x21,0x21,0x21,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL4C245P3[8] = {0x21,0x21,0x21,0x81,0x81,0x81,0x81,0x81};

static  const byte bombL5C244P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL5C245P1[8] = {0x51,0x51,0x51,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL5C244P2[8] = {0x1F,0x1F,0x1F,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL5C245P2[8] = {0x1F,0x1F,0x1F,0x81,0x81,0x81,0x81,0x81};
 static const byte bombL5C244P3[8] = {0x1F,0x1F,0x1F,0x81,0x81,0x81,0x8F,0x8F};
 static const byte bombL5C245P3[8] = {0x1F,0x1F,0x1F,0x81,0x81,0x81,0x81,0x81};


/*
static const byte bombColor_vert02[8]= { 0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20};
static const byte bombColor_bleu04[8]= { 0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40};
static const byte bombColor_bleu05[8]= { 0x50,0x50,0x50,0x50,0x50,0x50,0x50,0x50};
*/

static const byte red_font[8]= { 0x61,0x61,0x81,0x91,0x91,0x81,0x61,0x61};
static const byte yellow_font[8]= { 0xa1,0xb1,0xe1,0xf1,0xe1,0xb1,0xa1,0xa1};

byte workflow;
byte currentLevel;
byte nbLevelPasse;
byte oddNmi;
byte oddTimer;

byte lvlgfx;

byte maxc,maxcy;

byte timer;
byte timerInterne;
byte timerAnimation;
byte timerAnimation3;
byte timerAnimation2;

byte keyPressTimer;
byte action;

volatile byte collision_pied;
volatile byte collision_tete;
volatile byte collision_droite;
volatile byte collision_gauche;

volatile byte nmiCol_Global;
volatile byte nmi_renderBomb;


volatile byte odd;
// Pour collision détection
byte cd[96];

byte difficulty;
// Position relative des points de collisions
// x ou y = -1 --> position relative 0
// x ou y = 1 --> Position relative 16
// x ou y = 0 --> Position relative 8
const byte pointCollision[3] = {0,8,16};

unsigned char player_tombe;

byte returnPointCollision(char direction)
{
    return pointCollision[1+direction];
}

void initObstacle(void)
{
    byte i;
    // Mise à 0 des 96 octets du tableau des obstacles
    for (i=0; i<96; i++)
        *(cd+i)=0;
}

void setObstacle(byte x,byte y)
{
    int nocar;
    byte octet,bit;

    nocar = (y<<5)+x;
    octet = nocar>>3;
    bit = nocar - (octet <<3);
    *(cd+octet) = *(cd+octet) | (128>>bit);

}

byte isCarObstacle(byte x,byte y)
{
    int nocar;
    byte octet,bit;
    nocar = (y<<5)+x;
    octet = nocar>>3;
    bit =  nocar - (octet <<3);
    return ((*(cd+octet)) & (128>>bit));
}


char donneDirectionHasard(void)
{
    if (rnd_byte(0,1)==0) return -1;
    else return 1;
}

byte isCollision(byte x1,byte y1,byte h1,byte l1,byte x2,byte y2,byte h2,byte l2)
{
    if(y1 > y2+h2) return S_FALSE;
    if(y1+h1 < y2) return S_FALSE;
    if(x1 > x2+l2) return S_FALSE;
    if(x1+l1 < x2) return S_FALSE;

    return S_TRUE;
}

void checkPlayerCharCollision(void)
{
    byte player_pixel_x;
    byte player_pixel_y;

    player_pixel_x = player.posx >> 4;
    player_pixel_y = player.posy >> 4;

    if (player.vel<=0)  // Va peut-être corrige mon fucking bug de téléportation
    {
        if (
            ( isCarObstacle(
                  (player_pixel_x+2)>>3,
                  (player_pixel_y+16)>>3
              )!=0
            )
            || (
                isCarObstacle(
                    (player_pixel_x+13)>>3,
                    (player_pixel_y+16)>>3
                )!=0
            )
            || (
                isCarObstacle(
                    (player_pixel_x+7)>>3,
                    (player_pixel_y+16)>>3
                )!=0
            )

        )
            collision_pied = (player_pixel_y+16)>>3;
        else collision_pied = 0;
    }
    else collision_pied = 0;

    if (
        ( isCarObstacle(
              (player_pixel_x)>>3,
              (player_pixel_y+2)>>3
          )!=0
        )
        || (
            isCarObstacle(
                (player_pixel_x)>>3,
                (player_pixel_y+8)>>3
            )!=0
        )
        || (
            isCarObstacle(
                (player_pixel_x)>>3,
                (player_pixel_y+13)>>3
            )!=0
        )
    )
        collision_gauche = (player_pixel_x)>>3;
    else collision_gauche = 0;

    if (
        ( isCarObstacle(
              (player_pixel_x+15)>>3,
              (player_pixel_y+2)>>3
          )!=0
        )
        || (
            isCarObstacle(
                (player_pixel_x+15)>>3,
                (player_pixel_y+8)>>3
            )!=0
        )
        || (
            isCarObstacle(
                (player_pixel_x+15)>>3,
                (player_pixel_y+13)>>3
            )!=0
        )
    )
        collision_droite = (player_pixel_x+15)>>3;
    else collision_droite = 0;

    if ( (collision_pied==0) && (player.etat==ENLAIR) ) // On teste uniquement quand on à bien décollé du sol !
    {
        if (
            ( isCarObstacle(
                  (player_pixel_x+2)>>3,
                  (player_pixel_y)>>3
              )!=0
            )
            || (
                isCarObstacle(
                    (player_pixel_x+13)>>3,
                    (player_pixel_y)>>3
                )!=0
            )
        )
            collision_tete = (player_pixel_y)>>3;
        else collision_tete = 0;

    }
    else
    {
        collision_tete=0;
    }
}

void initSprites(void)
{
    char i;
    for (i=0; i<32; i++)
    {
        sprites[i].x = 0;
        sprites[i].y = INACTIF;
        sprites[i].pattern = 0;
        sprites[i].colour = 0;
    }
}

char getFreeSprite(void)
{
    byte i;

    for (i=16; i<32; i++)
    {
        if (sprites[i].y==INACTIF)
            return i;
    }
    /*
    odd+=8;
    if (odd>=32) odd = 0;

    for (i=odd;i<32;i++)
    if (sprites[i].y==INACTIF)
    return i;
    for (i=0;i<odd;i++)
    if (sprites[i].y==INACTIF)
    return i;*/

    return -1;
}

/********************************************************************/
/** GESTION DES ENNEMYS *********************************************/
/********************************************************************/
void initEnnemy(void)
{
    char i;
    for (i=0; i<MAXENNEMY; i++)
    {
        ennemy[i].type = INACTIF;
        ennemy[i].type_sauvegarde = INACTIF;
        ennemy[i].nmiCol = 0;

    }
}

void createEnnemy(byte x,byte y,byte t,byte ts,byte r1,byte r2,byte r3,byte r5,char r6)
{
    byte i,j;
    char spr;

    s_ennemy *this_ennemy;
    byte *myEnnemy_type;
    byte *myEnnemy_basePattern;
    byte *myEnnemy_r5;
    char *myEnnemy_direction_x;
    char *myEnnemy_direction_y;

    for (i=0; i<MAXENNEMY; i++)
    {

        this_ennemy = &ennemy[i];
        myEnnemy_type = &this_ennemy->type;

        if ((*myEnnemy_type)==INACTIF)
        {
            spr = getFreeSprite();
            if (spr!=-1)
            {

                myEnnemy_basePattern = &this_ennemy->basePattern;
                myEnnemy_direction_x = &this_ennemy->direction_x;
                myEnnemy_direction_y = &this_ennemy->direction_y;
                myEnnemy_r5 = &this_ennemy->r5;

                //nbEnnemyLevel++;
                (*myEnnemy_type) = t;
                ennemy[i].type_sauvegarde = ts;
                ennemy[i].sprno = spr;
                ennemy[i].r1 = r1;
                ennemy[i].r2 = r2;
                ennemy[i].r3 = r3;
                (*myEnnemy_r5) = r5;
                ennemy[i].r6 = r6;

                sprites[spr].x = x;
                sprites[spr].y = y;
                sprites[spr].colour = 15;

                if ((*myEnnemy_type)==E_VULTURE)
                {
                    sprites[spr].pattern = SPATTERN36;
                    (*myEnnemy_r5) = 50;
                    (*myEnnemy_direction_x) = 1;
                    (*myEnnemy_direction_y) = 0;
                    if (x<128) (*myEnnemy_basePattern) = SPATTERN39;
                    else (*myEnnemy_basePattern) = SPATTERN36;
                }
                else if ((*myEnnemy_type)==E_UFO)
                {
                    if (x<128) (*myEnnemy_direction_x) = 1;
                    else (*myEnnemy_direction_x) = -1;
                    (*myEnnemy_direction_y) = 1;
                    (*myEnnemy_basePattern) = SPATTERN54;
                }
                else if ((*myEnnemy_type)==E_SPHERE)
                {
                    if (x<128) (*myEnnemy_direction_x) = 1;
                    else (*myEnnemy_direction_x) = -1;
                    (*myEnnemy_r5) = 50;
                    (*myEnnemy_direction_y) = rnd_byte(0,2)-1;
                    (*myEnnemy_basePattern) = SPATTERN47;
                }
                else if ((*myEnnemy_type)==E_ORB)
                {
                    if (y<96) (*myEnnemy_direction_y) = 1;
                    else (*myEnnemy_direction_y) = -1;
                    (*myEnnemy_r5) = 50;
                    (*myEnnemy_direction_x) = rnd_byte(0,2)-1;
                    (*myEnnemy_basePattern) = SPATTERN50;
                }
                else if ((*myEnnemy_type)==E_CLUB)
                {
                    (*myEnnemy_r5) = 1;
                    if (y<96) (*myEnnemy_direction_y) = 1;
                    else (*myEnnemy_direction_y) = -1;
                    if (x<128) (*myEnnemy_direction_x) = 1;
                    else (*myEnnemy_direction_x) = -1;
                    if (x<128) (*myEnnemy_basePattern) = SPATTERN57;
                    else (*myEnnemy_basePattern) = SPATTERN59;
                }
                else if ((*myEnnemy_type)==E_MOMIE)
                {
                    (*myEnnemy_r5) = 1;
                    (*myEnnemy_direction_y) = 1;
                    (*myEnnemy_basePattern) = SPATTERN44;
                }
                else if ((*myEnnemy_type)==E_BONUS)
                {
                    (*myEnnemy_direction_y) = 1;
                    (*myEnnemy_direction_x) = 1;
                    (*myEnnemy_basePattern) = SPATTERN53;
                    bonusEnCours = 1;
                    ennBonus=0;
                }
                else if ((*myEnnemy_type)==E_SCORE)
                {
                    (*myEnnemy_direction_x) = 0;
                    (*myEnnemy_direction_y) = 0;

                    (*myEnnemy_basePattern) = SPATTERN46;
                    (*myEnnemy_r5) = 250;
                }

            }

            nbEnnemyLevel=0;
            for (j=0;j<MAXENNEMY;j++)
            {
                if (ennemy[j].type!=INACTIF) nbEnnemyLevel++;
            }
            return;
        }
    }
}

void destroyEnnemy(byte id)
{
    byte i;
    /* Si on détruit un bonus, c'est qu'on la choppé */
    /* Donc le bonus n'est plus en cours, mais le timer de bonus oui, les ennemys */
    /* Sont transformé en points */
    if (ennemy[id].type==E_BONUS)
    {
        bonusEnCours = 0;
        ennBonus=350;
    }

    /* Désactivation */
    ennemy[id].type = INACTIF;
    ennemy[id].type_sauvegarde = INACTIF;
    sprites[ennemy[id].sprno].y = INACTIF;
    //nbEnnemyLevel--;
    nbEnnemyLevel=0;
    for (i=0;i<MAXENNEMY;i++)
    {
        if (ennemy[i].type!=INACTIF) nbEnnemyLevel++;
    }

}

void destroyAllEnnemy(void)
{
    byte i;

    for (i=0; i<MAXENNEMY; i++)
    {
        if (ennemy[i].type!=INACTIF)
        {
            destroyEnnemy(i);
        }
    }
}

/*--------------------------------------------------------------------
    Transforme les ennemys en points
---------------------------------------------------------------------*/
void ennemyToBonus(void)
{
    byte xs,ys,ts,i,r1,r2,r3,r5;
    char r6;


    for (i=0; i<MAXENNEMY; i++)
    {
        if (ennemy[i].type!=INACTIF)
        {
            xs = sprites[ennemy[i].sprno].x;
            ys = sprites[ennemy[i].sprno].y;
            ts = ennemy[i].type;
            r1 = ennemy[i].r1;
            r2 = ennemy[i].r2;
            r3 = ennemy[i].r3;
            r5 = ennemy[i].r5;
            r6 = ennemy[i].r6;

            destroyEnnemy(i);
            createEnnemy(xs,ys,E_SCORE,ts,r1,r2,r3,/*0,*/r5,r6);
        }
    }

    SWITCH_IN_BANK1
    stopmusic();
    startmusic(tune_bonus,0,LOOP_OFF,gameHz);
}

/*--------------------------------------------------------------------
    Transforme les points en ennemys comme ils étaient avant.
---------------------------------------------------------------------*/
void bonusToEnnemy(void)
{
    byte xs,ys,ts,r1,r2,r3,r5;
    char r6,i;

    SWITCH_IN_BANK1
    stopmusic();
    startmusic(tune_ingame,0,LOOP_ON,gameHz);

    for (i=0; i<MAXENNEMY; i++)
    {
        if (ennemy[i].type==E_SCORE)
        {
            xs = sprites[ennemy[i].sprno].x;
            ys = sprites[ennemy[i].sprno].y;
            ts = ennemy[i].type_sauvegarde;
            r1 = ennemy[i].r1;
            r2 = ennemy[i].r2;
            r3 = ennemy[i].r3;
            r5 = ennemy[i].r5;
            r6 = ennemy[i].r6;
            destroyEnnemy(i);
            createEnnemy(xs,ys,ts,ts,r1,r2,r3,/*0,*/r5,r6);
        }
    }
}

void intern_moveEnnemy(byte i)
{

    s_ennemy *this_ennemy = &ennemy[i];
    byte *myEnnemy_type = &this_ennemy->type;
    byte *myEnnemy_r1 = &this_ennemy->r1;
    byte *myEnnemy_r2 = &this_ennemy->r2;
    byte *myEnnemy_r3 = &this_ennemy->r3;
    byte *myEnnemy_r5 = &this_ennemy->r5;
    char *myEnnemy_r6 = &this_ennemy->r6;
    byte *myEnnemy_sprno = &this_ennemy->sprno;
    byte *myEnnemy_cx = &this_ennemy->cx;
    byte *myEnnemy_cy = &this_ennemy->cy;
    byte *myEnnemy_c = &this_ennemy->c;
    byte *myEnnemy_nmiCol = &this_ennemy->nmiCol;
    byte *myEnnemy_basePattern = &this_ennemy->basePattern;
    //byte *myEnnemy_doMove = &this_ennemy->doMove;
    char *myEnnemy_direction_x = &this_ennemy->direction_x;
    char *myEnnemy_direction_y = &this_ennemy->direction_y;

    sprite_t *this_sprite = &sprites[(*myEnnemy_sprno)];
    byte *mySprite_x = &this_sprite->x;
    byte *mySprite_y = &this_sprite->y;
    byte *mySprite_pattern = &this_sprite->pattern;
    byte *mySprite_colour = &this_sprite->colour;

    byte playerSprite_x;
    byte playerSprite_y;

    playerSprite_x = sprites[PLAYER_CORPS].x;
    playerSprite_y = sprites[PLAYER_CORPS].y;

    if ((timerInterne&7)==0) timerAnimation3+=4;
    if (timerAnimation3==12) timerAnimation3=0;
    if ((timerInterne&7)==0) timerAnimation2+=4;
    if (timerAnimation2==8) timerAnimation2=0;
    timerInterne++;

    // Pas de collision dans la direction suivante, on va bouger l'ennemy
    if (ennemy[i].c==0)
    {
        (*mySprite_x)+=(*myEnnemy_direction_x);
        (*mySprite_y)+=(*myEnnemy_direction_y);

        if ((*myEnnemy_type)==E_BONUS)
        {
            (*mySprite_x)+=(*myEnnemy_direction_x);
            (*mySprite_y)+=(*myEnnemy_direction_y);
        }
    }

    if ((*myEnnemy_r5)>0) (*myEnnemy_r5)--; // Variable commune à tout les ennemy

    // Calcul du prochain mouvement si nécessaire.
    if ((*myEnnemy_type)==E_VULTURE)
    {
        // On décompte le nbre de mouvement
        //if ((*myEnnemy_r5)>0) (*myEnnemy_r5)--;
        // Si il y à une collision on force un changement de direction
        if ((*myEnnemy_c)==1)
        {
            (*myEnnemy_r5)=0;/*(*myEnnemy_c)=0;*/
        }

        // Si on à atteind le nombre de changement MAX, on demande un changement de direction
        if ((*myEnnemy_r5)==0)
        {
            (*myEnnemy_r5) = 50;

            // Si l'ennemi se déplaçait de manière horizontale
            if  ((*myEnnemy_direction_x)!=0)
            {
                // On va le faire aller en vertical par rappor au joueur.
                (*myEnnemy_direction_x) = 0;
                if ((*mySprite_y)>playerSprite_y) (*myEnnemy_direction_y) = -1;
                else (*myEnnemy_direction_y) = 1;
            }
            else
            {
                (*myEnnemy_direction_y) = 0;
                // On va le faire aller à l'horizontal par rappor au joueur.
                if ((*mySprite_x)>playerSprite_x)
                {
                    (*myEnnemy_direction_x) = -1;
                    (*myEnnemy_basePattern) = SPATTERN36;
                }
                else
                {
                    (*myEnnemy_direction_x) = 1;
                    (*myEnnemy_basePattern) = SPATTERN39;
                }
            }
        }
    }
    else if (((*myEnnemy_type)==E_UFO) || ((*myEnnemy_type)==E_BONUS))
    {
        // Si il y à une collision, on va changer de direction
        if ((*myEnnemy_c)==1)
        {
            (*myEnnemy_direction_x) = donneDirectionHasard();
            (*myEnnemy_direction_y) = donneDirectionHasard();
        }
    }
    else if ((*myEnnemy_type)==E_SPHERE)
    {
        // On décompte le nbre de mouvement
        //if ((*myEnnemy_r5)>0) (*myEnnemy_r5)--;
        // Si il y à une collision on force un changement de direction
        if ((*myEnnemy_c)==1)
        {
            (*myEnnemy_r5)=0;/*(*myEnnemy_c)=0;*/
        }

        // Si on à atteind le nombre de changement MAX, on demande un changement de direction
        if ((*myEnnemy_r5)==0)
        {
            (*myEnnemy_r5) = 20;
            (*myEnnemy_direction_y) = donneDirectionHasard();
            if ((*mySprite_x)>playerSprite_x) (*myEnnemy_direction_x)=-1;
            else (*myEnnemy_direction_x)=1;
        }
    }
    else if ((*myEnnemy_type)==E_ORB)
    {
        // On décompte le nbre de mouvement
        //if ((*myEnnemy_r5)>0) (*myEnnemy_r5)--;
        // Si il y à une collision on force un changement de direction
        if ((*myEnnemy_c)==1)
        {
            (*myEnnemy_r5)=0;/*(*myEnnemy_c)=0;*/
        }

        // Si on à atteind le nombre de changement MAX, on demande un changement de direction
        if ((*myEnnemy_r5)==0)
        {
            (*myEnnemy_r5) = 20;
            (*myEnnemy_direction_x) = donneDirectionHasard();
            if ((*myEnnemy_c)==0)
            {
                if ((*mySprite_y)>playerSprite_y)  (*myEnnemy_direction_y)=-1;
                else (*myEnnemy_direction_y)=1;
            }
            else
            {
                if ((*myEnnemy_direction_y)==-1) (*myEnnemy_direction_y)=1;
                else (*myEnnemy_direction_y)=-1;
            }
        }


    }
    else if ((*myEnnemy_type)==E_CLUB)
    {
        // On décompte le nbre de mouvement
        //if ((*myEnnemy_r5)>0) (*myEnnemy_r5)--;
        // Si il y à une collision on force un changement de direction
        if ((*myEnnemy_c)==1)
        {
            (*myEnnemy_r5)=0;/*(*myEnnemy_c)=0;*/
        }

        // Si on à atteind le nombre de changement MAX, on demande un changement de direction
        if ((*myEnnemy_r5)==0)
        {
            (*myEnnemy_r5) = 1;

            // Si l'ennemi se déplaçait de manière horizontale
            if  ((*myEnnemy_direction_x)!=0)
            {
                // On va le faire aller en vertical par rappor au joueur.
                (*myEnnemy_direction_x) = 0;
                if ((*mySprite_y)>playerSprite_y) (*myEnnemy_direction_y) = -1;
                else (*myEnnemy_direction_y) = 1;
            }
            else
            {
                (*myEnnemy_direction_y) = 0;
                // On va le faire aller à l'horizontal par rappor au joueur.
                if ((*mySprite_x)>playerSprite_x)
                {
                    (*myEnnemy_direction_x) = -1;
                    (*myEnnemy_basePattern) = SPATTERN57;
                }
                else
                {
                    (*myEnnemy_direction_x) = 1;
                    (*myEnnemy_basePattern) = SPATTERN59;
                }
            }
        }
    }
    // Pour la momie, j'ai besoin de 2 points de collision distinct
    // Un en bas, un à gauche/droite
    else if ((*myEnnemy_type)==E_MOMIE)
    {
        // Point de collision bas : résultat dans r3
        (*myEnnemy_r1) = (*mySprite_x)+8;
        (*myEnnemy_r2) = (*mySprite_y)+16;

        // J'ai une collision au pied, je m'arrête, sinon, je continue

        if ((*myEnnemy_r3)==1)
        {
            (*myEnnemy_direction_y) = 0;
            if (((*myEnnemy_direction_x)==0) || ((*myEnnemy_r5)==0))
            {
                // Si je n'ai pas encore choisit de direction horizontale
                (*myEnnemy_direction_x) = donneDirectionHasard();
                if ((*myEnnemy_direction_x) == -1) (*myEnnemy_basePattern) = SPATTERN42;
                else (*myEnnemy_basePattern) = SPATTERN44;
                (*myEnnemy_r5) = rnd_byte(20,50); // Déplace toi de 20 à 50 pixels dans cette direction
            }
        }
        else
        {
            (*myEnnemy_direction_y) = 1;
            (*myEnnemy_direction_x) = 0;
            (*myEnnemy_r5) = 0;
        }

        if ((*mySprite_y)>167)
        {
            (*myEnnemy_r3) = rnd_byte(1,5);
            createEnnemy((*mySprite_x),(*mySprite_y),(*myEnnemy_r3),(*myEnnemy_r3),0,0,0,/*0,*/0,0);
            destroyEnnemy(i);
        }
    } /*else if ((*myEnnemy_type)==E_SCORE)
	{
		if ((*myEnnemy_r5)==0) {bonusToEnnemy(i);bonusEnCours=0;}
	}*/

    if (((*myEnnemy_type)==E_BONUS) || ((*myEnnemy_type)==E_SCORE))
    {
        (*mySprite_pattern) = (*myEnnemy_basePattern);
        (*mySprite_colour)++;
        if ((*mySprite_colour)>15) (*mySprite_colour)=2;
    }
    else
    {
        if (((*myEnnemy_type)!=E_CLUB) && ((*myEnnemy_type)!=E_MOMIE)) (*mySprite_pattern) = (*myEnnemy_basePattern)+timerAnimation3;
        else (*mySprite_pattern) = (*myEnnemy_basePattern)+timerAnimation2;
    }



}

void intern_checkNextMoveEnnemy(byte i)
{
    s_ennemy *this_ennemy = &ennemy[i];
    byte *myEnnemy_type = &this_ennemy->type;
    byte *myEnnemy_sprno = &this_ennemy->sprno;
    byte *myEnnemy_cx = &this_ennemy->cx;
    byte *myEnnemy_cy = &this_ennemy->cy;
    byte *myEnnemy_nmiCol = &this_ennemy->nmiCol;
    char myEnnemy_direction_x = ennemy[i].direction_x;
    char myEnnemy_direction_y = ennemy[i].direction_y;

    sprite_t *this_sprite = &sprites[(*myEnnemy_sprno)];
    byte *mySprite_x = &this_sprite->x;
    byte *mySprite_y = &this_sprite->y;

    (*myEnnemy_cx) = ((*mySprite_x)+returnPointCollision(myEnnemy_direction_x))>>3;
    (*myEnnemy_cy) = ((*mySprite_y)+returnPointCollision(myEnnemy_direction_y))>>3;
    (*myEnnemy_nmiCol) = 1;

}

void checkSpriteCollision(byte e)
{
    byte r,spr,t;

    if ((vdp_status&32)==0) return;

    t = ennemy[e].type;
    if (t!=INACTIF)
    {
        spr = ennemy[e].sprno;

        r = isCollision(sprites[PLAYER_CORPS].x+2,sprites[PLAYER_CORPS].y+2,14,14,sprites[spr].x+4,sprites[spr].y+4,12,12);
        if (r==S_TRUE)
        {
            if (t==E_BONUS)
            {
				startsfxPrio(sfx_catch,0);
                destroyEnnemy(e);
                ennemyToBonus();
            }
            else if (t==E_SCORE)
            {
				startsfxPrio(sfx_catch,0);
                destroyEnnemy(e);
                player.score+=5;
            }
            else
            {
                if (cheat!=1) workflow = WORKFLOW_LOOSE_LIFE;
            }
        }
    }
}

// !!!! R6 = direction à prendre !!!!
// 25/30 par seconde
// 1 fois, check des collisions,
// 1 fois, mouvement !
void moveEnnemy(void)
{
    byte i,k;

    s_ennemy	*myEnnemy;
    byte		*myEnnemy_type;
    byte		*myEnnemy_nmiCol;
    byte		*myEnnemy_c;
    byte		*myEnnemy_cx;
    byte		*myEnnemy_cy;
    byte		*myEnnemy_r1;
    byte		*myEnnemy_r2;
    byte		*myEnnemy_r3;

    for (i=0; i<MAXENNEMY; i++)
    {
        checkSpriteCollision(i);
        if (ennemy[i].type!=INACTIF)
        {
            /* Décide ce que va faire l'ennemy */
            if ((timer&1)==0)
            {
                intern_checkNextMoveEnnemy(i);
                nmiCol_Global=1;
            }
            else intern_moveEnnemy(i); /* Bouge l'ennemy */
        }
    }

    if (nmiCol_Global==1)
    {
        for (k=0; k<MAXENNEMY; k++)
        {
            myEnnemy = &ennemy[k];
            myEnnemy_type = &myEnnemy->type;
            myEnnemy_nmiCol = &myEnnemy->nmiCol;

            if ( ((*myEnnemy_type)!=INACTIF) && ((*myEnnemy_nmiCol)==1) )
            {
                myEnnemy_c = &myEnnemy->c;
                myEnnemy_cx = &myEnnemy->cx;
                myEnnemy_cy = &myEnnemy->cy;

                if (isCarObstacle((*myEnnemy_cx),(*myEnnemy_cy))!=0) (*myEnnemy_c) = 1;
                else (*myEnnemy_c) = 0;


                if ((*myEnnemy_type)==E_MOMIE)
                {
                    myEnnemy_r1 = &myEnnemy->r1;
                    myEnnemy_r2 = &myEnnemy->r2;
                    myEnnemy_r3 = &myEnnemy->r3;

                    if (isCarObstacle((*myEnnemy_r1)>>3,(*myEnnemy_r2)>>3)!=0) (*myEnnemy_r3) = 1;
                    else (*myEnnemy_r3) = 0;
                }


                (*myEnnemy_nmiCol)=0;
            }
        }
        nmiCol_Global=0;
    }
}

void generateEnnemy(void)
{
    byte maxEnn,cEnn;

    /* On ne cree pas d'ennemie pendant un bonus en court !! */
    if (ennBonus>0)
    {
        ennBonus--;
        if (ennBonus==1)    /* A la fin du temps, les bonus redeviennent des ennemys */
        {
            bonusToEnnemy();
            bonusEnCours=0;
            ennBonus=0;
        }
        return;
    }

    /* Permettra de régler le max d'ennemie par rapport au niveau de difficulté ! */
    maxEnn = difficulty;

    // Faire varier le nombre d'ennemies max selon le niveau de difficult‚
    if ((nbEnnemyLevel<maxEnn) && (timer==32))
    {
        // On crée les ennemys du coté ou le joueur n'est pas ...
        if ((player.posx>>4)>=128)
        {
            createEnnemy(48,8,E_MOMIE,E_MOMIE,0,0,0,0,0);
        }
        else
        {
            createEnnemy(192,8,E_MOMIE,E_MOMIE,0,0,0,0,0);
        }
    }

    /* On à atteind le max d'ennemy, on va soulager le joueur avec un bonus !! */
    if ((nbEnnemyLevel==maxEnn) && (timer==30))
    {
        cEnn = rnd_byte(0,100);
        /* 50 % de change que le bonus apparaissent */
        if (cEnn>50)
        {
            cEnn = E_BONUS;

            if ((player.posx>>4)>=160) createEnnemy(48,8,cEnn,cEnn,0,0,0,0,0);
            else
                createEnnemy(192,8,cEnn,cEnn,0,0,0,0,0);
        }
    }
}

/********************************************************************/
/** FIN GESTION DES ENNEMYS *****************************************/
/********************************************************************/


byte get_char_protected(byte x,byte y)
{
    if (x>31) return 92;
    if (y>23) return 92;
    return (byte)get_char(x,y);
}


// Charge une image Dan0 dans la dest (soit vidéo, soit buffer)
// p = pattern
// c = colortab
// n = name

void LoadPatternAndshowAScreenPLE(char* p,char *c,char *n)
{
    cls();
    pletter(n,chrtab);
    pletter(n,buffer);
    pletter(p,chrgen);
    pletter(c,coltab);
    pletter(c,coltab+2048);
    pletter(c,coltab+4096);
    duplicate_pattern();
    //rle2vram(SPATTERNRLE,sprtab);
}

// Recopie 2*2 caractères du buffer vers l'écran principal
// sx : position x dans le buffer
// sy : position y dans le buffer
// dx : destination x dans le buffer
// dy : destination y dans le buffer
void buffer2screen(byte x,byte y)
{
    byte c[4];
    byte i;

    for (i=0; i<2; i++)
    {
        get_vram(buffer+((y+i)<<5)+x,c,2);
        put_vram(chrtab+((y+i)<<5)+x,c,2);
    }
}

void createBomb(byte i,byte x,byte y,byte a)
{
    bomb[i].x = x;
    bomb[i].y = y;
    bomb[i].allume = a;
}

/*-----------------------------------------------------------------------------
  Routine qui initialise et anime la bombe allumée
-------------------------------------------------------------------------------*/
void animateBomb()
{
    byte k;
    /* Si il y à une bombe allumée dans le niveau */
    if (bombeAllumeeNiveau==1)
    {
        /* On initialise l'animation et on ne repassera plus dans l'initialisation */
        /* Jusqu'à la prochaine */
        bombeAllumeeNiveau=2;
        for (k=0; k<MAXBOMB; k++)
        {
            if (bomb[k].allume==BOMB_ALLUME)
            {
                sprites[SPRITE_ETINCELLE].x = ((bomb[k].x)<<3)-1;
                sprites[SPRITE_ETINCELLE].y = ((bomb[k].y)<<3)-2;
                break;
            }
        }
    }

    /* Par sécurité pour éviter un bug ?? */
    if (bombeAllumeeNiveau==0) sprites[SPRITE_ETINCELLE].y = INVISIBLE;

    /* Fait cycler les couleurs de la mèche de la bombe */
    if (sprites[SPRITE_ETINCELLE].colour<15) sprites[SPRITE_ETINCELLE].colour++;
    else sprites[SPRITE_ETINCELLE].colour=0;
}

/*-----------------------------------------------------------------------------
  Routine qui dessine le level
-------------------------------------------------------------------------------*/
void drawLevel(byte level)
{
    byte *cLevel;
    byte offset;
    byte i,j;
    byte l;

    byte psx,psy,psl,psh;

    SWITCH_IN_BANK1

    offset = 0;
    nbBombLevel = 0;
    nbEnnemyLevel = 0;
    bonusEnCours = 0;
    ennBonus=0;

    l = level;
    //l = 0;

    screen_off();
    disable_nmi();

    /* Reinitialisation des bombes */
    for (i=0; i<MAXBOMB; i++)
    {
        createBomb(i,0,0,BOMB_NULL);
        bombeAllumeeNiveau=0;
    }


    /* Initialisation des plateformes du niveau */
    j=0;
    cLevel = levels_p[l];
    while (*(cLevel+offset)!=255) /* Tant qu'on à pas finit de lire le paramétrage du level courant */
    {
        /* Creation des plateformes horizontales */
        psx = *(cLevel+offset);
        psy = *(cLevel+offset+1);
        psl = *(cLevel+offset+2);
        psh = *(cLevel+offset+3);

        if (psl!=0)
        {
            put_char(psx,psy,253);
            put_char(psx+psl-1,psy,255);
            for (i=0; i<psl-2; i++)
            {
                put_char(psx+i+1,psy,254);
            }
        }
        else // TODO : !!!!! A TESTER !!!!
        {
            for (i=0; i<psh; i++)
            {
                if (i==0) put_char(psx,psy+i,250);
                else if (i==(psh-1)) put_char(psx,psy+i,252);
                else put_char(psx,psy+i,251);
            }
        }
        offset+=4;
        j++;
    }

    // initialisation des bombes du niveaux
    j=0;
    offset=0;
    cLevel = levels_b[l];
    while (*(cLevel+offset)!=255) // Tant qu'on à pas finit de lire le paramétrage du level courant
    {
        put_frame0(&bombGfx,*(cLevel+offset),*(cLevel+offset+1),2,2);
        createBomb(j,*(cLevel+offset),*(cLevel+offset+1),BOMB_NORMAL);
        nbBombLevel++;
        offset+=2;
        j++;
    }
    bombeAllumeeNiveau=0;

    createEnnemy(200,32,E_VULTURE,E_VULTURE,0,0,0,0,0);
    initObstacle();
    for (i=0; i<32; i++)
        for (j=0; j<24; j++)
        {
            if (get_char_protected(i,j)>247) setObstacle(i,j);
            if ((i<=2) || (i>=29)) setObstacle(i,j);
        }

    enable_nmi();
    screen_on();

    /*
    	for (i=0;i<32;i++)
    		for (j=0;j<24;j++)
    			if (isCarObstacle(i,j)!=0) {delay(5);put_char(i,j,'0');}


    	pause();*/
}

void init_allumeBombe(void)
{
    byte k;
                for (k=0; k<MAXBOMB; k++)
                {
                    /* Si il n'y à pas de bombre allumée dans le niveau et que l'on récupère une bombe normale non détruite */
                    /* On allume une prochaine bombe en relisant dans l'ordre le tableau des bombes */
                    if ((bombeAllumeeNiveau==0) && (bomb[k].allume==BOMB_NORMAL))
                    {
                        bomb[k].allume=BOMB_ALLUME;
                        bombeAllumeeNiveau=1;   /* Il y à une bombe allumée dans le niveau */
                        sprites[SPRITE_ETINCELLE].x = (bomb[k].x<<3)-1;
                        sprites[SPRITE_ETINCELLE].y = (bomb[k].y<<3)-2;
                    }
                }
}

void checkBombCollision(void)
{
    byte i,k;
    byte redraw;


    s_bomb	*myBomb;
    byte	*myBomb_allume;

    redraw = 0;

    /* On parcours tout le tableau des bombes */
    for (i=0; i<MAXBOMB; i++)
    {
        /* Bombe courante = myBomb */
        myBomb = &bomb[i];
        /* Etat de la bombe = myBomb_allume */
        myBomb_allume = &myBomb->allume;

        /* On est positionné sur une bombe non détruite */
        if (((*myBomb_allume)==BOMB_NORMAL) || ((*myBomb_allume)==BOMB_ALLUME))
        {
            /* Check Collision bombe et joueur */
            if (isCollision(sprites[PLAYER_CORPS].x+4,sprites[PLAYER_CORPS].y+4,8,8,(bomb[i].x<<3)+4,(bomb[i].y<<3)+4,8,8)==S_TRUE)
            {
				startsfxPrio(sfx_catch,0);
                if ((*myBomb_allume)==BOMB_NORMAL) {player.score++;perfect=0;}
                if ((*myBomb_allume)==BOMB_ALLUME) player.score+=10;

                /* Il y à une collision, donc une bombe en moins */
                nbBombLevel--;
                /* On redessinera le décor sous la bombe */
                redraw = 1;

                /* Si c'était une bombe allumée, on considère qu'il y en à plus dans le niveau */
                if ((*myBomb_allume)==BOMB_ALLUME) 	bombeAllumeeNiveau=0;

                /* La bombe courante est détruite */
                (*myBomb_allume) = BOMB_DETRUIT;

                // Allume la prochaine bombe
                for (k=0; k<MAXBOMB; k++)
                {
                    /* Si il n'y à pas de bombre allumée dans le niveau et que l'on récupère une bombe normale non détruite */
                    /* On allume une prochaine bombe en relisant dans l'ordre le tableau des bombes */
                    if ((bombeAllumeeNiveau==0) && (bomb[k].allume==BOMB_NORMAL))
                    {
                        bomb[k].allume=BOMB_ALLUME;
                        bombeAllumeeNiveau=1;   /* Il y à une bombe allumée dans le niveau */
                        sprites[SPRITE_ETINCELLE].x = (bomb[k].x<<3)-1;
                        sprites[SPRITE_ETINCELLE].y = (bomb[k].y<<3)-2;
                    }
                }

                break;
            }
        }
    }
    if (redraw==1) nmi_renderBomb = 1;
}

void controlPlayer(void)
{
    sprite_t *mySprite = &sprites[PLAYER_CORPS];
    byte	*mySprite_x = &mySprite->x;
    byte	*mySprite_y = &mySprite->y;
    byte	*mySprite_pattern = &mySprite->pattern;

	byte pl_fire;


    /* Bouge le joueur horizontalement par rapport à l'inertie (player.move) */
    player.posx = player.posx + player.move;



    // On touche quelquechose avec les pieds
    if ( collision_pied > 0 )
    {
        player.posy = ((collision_pied<<3)-16)<<4; // Reste collé au sol

        player.vel=0;   // Vélocitée à 0 forcément
        player.etat=AUSOL;	// On est donc au sol
    }
    else
    {
        // Sinon on descend à moins qu'on ai stoppé le saut.


        /* Ajout à tester pour éviter de sauter depuis le vide */
        player.etat=ENLAIR;
        if (player.dontmovey<1)
        {
            player.posy = player.posy - player.vel;
            player.vel = player.vel - GRAV;
        }
    }

    // On tape le plafond.
    if ((*mySprite_y)<10)
    {
        player.vel=0;/*(*mySprite_y)=10;*/player.posy=10<<4;
    }

    // On tape de la tête.
    if (collision_tete>0)
    {
        player.vel=0;/*(*mySprite_y)=((collision_tete<<3)+8);*/player.posy=((collision_tete<<3)+8)<<4;
    }

	pl_fire = joypad_1;
    // Action des boutons
    // Si on appuie, on veut donc sauter ou arrêter le saut !.
    if ((((pl_fire&FIRE1) || (pl_fire&FIRE2))) && (collision_tete==0))
    {
        action = SAUT;
		
        (*mySprite_pattern) = SPATTERN0;
    }
    // Sinon plus d'action
    if ((!(pl_fire&FIRE1)) && !((pl_fire&FIRE2)))
    {
        action = NOACTION;
        keyPressTimer=0;
    }


    /* On à appuyé sur le bouton */
    if ( (action==SAUT) && (keyPressTimer==0) )
    {
        /* Si on était au sol, on va décoller ! */
        if (player.etat==AUSOL)
        {
			startsfxPrio(sfx_jump,0);
            player.posy-=32;
			if (control==0)
			{
				if (pl_fire&UP)
				{				
					player.vel=4<<4;
				}
				else player.vel=3<<4;
			}
			if (control!=0)
			{
				if (pl_fire&FIRE2)
				{				
					player.vel=4<<4;
				}
				else player.vel=3<<4;
			}
            keyPressTimer=1;
            player.etat=ENLAIR;
        }
        else if (player.etat==ENLAIR) /* Si on était en l'air, on va stopper le saut */
        {
			startsfxPrio(sfx_stationaire,0);
            /* pendant 10 tours */
            if (player.vel>0)
            {
                player.vel=0;
            }
            if ( (player.vel<0) && (player.dontmovey==0) )
            {
                player.dontmovey=10;
                keyPressTimer=1;
            }
        }
    }


    // Réduit le compteur de freeze de saut.
    if (player.dontmovey>0)
    {
        player.dontmovey--;
    }

    // Augmente ou réduit l'inertie.
    if (player.move>0) player.move-=2;
    else if (player.move<0) player.move+=2;

    if ( (collision_droite!=0) && !(joypad_1&LEFT) )
    {
        player.move=0;
        player.posx=((collision_droite<<3)-15)<<4;
    }
    if ( (collision_gauche!=0) && !(joypad_1&RIGHT))
    {
        player.move=0;
        player.posx=((collision_gauche<<3)+7)<<4;
    }

    // Le joueur veux aller à droite
    if (joypad_1&RIGHT)
    {
        //player.direction = DROITE;
        if (collision_droite==0) // Si il n'y à pas de collision
        {
            player.move+=4;
            if (player.etat==ENLAIR)
            {
                if (player.vel>=0) (*mySprite_pattern) = SPATTERN10;
                else (*mySprite_pattern) = SPATTERN2;
            }
            else (*mySprite_pattern) = SPATTERN4 + timerAnimation;
        }
    }
    else // Sinon si le joueur veux aller à gauche
        if (joypad_1&LEFT)
        {
            if (collision_gauche==0) // Si il n'y à pas de collision
            {
                player.move-=4;
                if (player.etat==ENLAIR)
                {
                    if (player.vel>=0) (*mySprite_pattern) = SPATTERN11;
                    else (*mySprite_pattern) = SPATTERN3;
                }
                else (*mySprite_pattern) = SPATTERN7 + timerAnimation;
            }
        }
        else
        {
            // Si l'inertie fait que je vais encore à gauche ou à droite et que j'ai une collision
            // Je repositionne le sprite et je stoppe.
            if (player.move!=0)
            {
                if (collision_gauche!=0)
                {
                    player.move=0;
                }
                else if (collision_droite!=0)
                {
                    player.move=0;
                }
            }

            if (player.etat==AUSOL) (*mySprite_pattern) = SPATTERN0;
            else
            {
                if (player.vel<0) (*mySprite_pattern) = SPATTERN1;
                else (*mySprite_pattern) = SPATTERN0;
            }
        }

    // Stabilise l'inertie horizontale à un maximum.
	if (player.etat==AUSOL)
	{
		if (player.move>36) player.move = 36;
		else if (player.move<-36) player.move = -36;
	}
	else
	{
		if (player.move>25) player.move = 25;
		else if (player.move<-25) player.move = -25;
	}

	if (player.posx>3472) player.posx=3472;
	if (player.posx<368) player.posx=368;

    // Corps
    (*mySprite_x) = player.posx>>4;
    (*mySprite_y) = player.posy>>4;

    sprites[PLAYER_VISAGE].x = (player.posx>>4);
    sprites[PLAYER_VISAGE].y = (player.posy>>4);
    sprites[PLAYER_VISAGE].pattern = (*mySprite_pattern)+(12<<2);

    sprites[PLAYER_CAPE].x = (player.posx>>4);
    sprites[PLAYER_CAPE].y = (player.posy>>4);
    sprites[PLAYER_CAPE].pattern = (*mySprite_pattern)+(24<<2);


    // On fait checker les collisions par la nmi


}


void reinit()
{
    byte tmpx,tmpy;

    oddNmi = 0;
    odd = 0;
    keyPressTimer = 0;
    timer=0;
    timerInterne=0;
    timerAnimation=0;
    timerAnimation3=0;

    nmiCol_Global = 0;
    bonusEnCours = 0;
    ennBonus=0;
    action = NOACTION;

    collision_pied = 0;
    collision_tete = 0;
    collision_droite = 0;
    collision_gauche = 0;

    player.vel = 0.2*16;
    player.vel_cst = (12*16);
    player.posx = (128-8)*16;
    player.posy = 168*16;
    player.move = 0;

    tmpx = player.posx>>4;
    tmpy = player.posy>>4;

    sprites[PLAYER_CORPS].pattern = SPATTERN0;
    sprites[PLAYER_CORPS].x = tmpx;
    sprites[PLAYER_CORPS].y = tmpy;
    sprites[PLAYER_CORPS].colour = PLAYER_CORPS_COLOR;

    sprites[PLAYER_VISAGE].x = tmpx;
    sprites[PLAYER_VISAGE].y = tmpy;
    sprites[PLAYER_VISAGE].colour = PLAYER_VISAGE_COLOR;

    sprites[PLAYER_CAPE].x = tmpx;
    sprites[PLAYER_CAPE].y = tmpy;
    sprites[PLAYER_CAPE].colour = PLAYER_CAPE_COLOR;

    sprites[SPRITE_ETINCELLE].y = INVISIBLE;
    sprites[SPRITE_ETINCELLE].pattern = SPATTERN61;
    sprites[SPRITE_ETINCELLE].colour = 0;

    player.dontmovey=0;
    bombeAllumeeNiveau=0;
}

void init()
{
    initSprites();
    reinit();
    currentLevel=1;
}

void show_bomb_tileset()
{
        pletter(tileset_color,coltab+(244*8));
        pletter(tileset_color,coltab+2048+(244*8));
        pletter(tileset_color,coltab+4096+(244*8));

        pletter(tileset_pattern,chrgen+(244*8));
        pletter(tileset_pattern,chrgen+2048+(244*8));
        pletter(tileset_pattern,chrgen+4096+(244*8));

}


void showFond(byte l)
{
    //byte *ptr,*ptr2;
    SWITCH_IN_BANK0
    if ((lvlgfx)==5)
    {
        LoadPatternAndshowAScreenPLE(FOND5_PATTERNRLE,FOND5_COLORRLE,FOND5_NAMERLE);
        show_bomb_tileset();

		put_vram_pattern(coltab+(244*8),bombL5C244P1,8,1);
		put_vram_pattern(coltab+(245*8),bombL5C245P1,8,1);

		put_vram_pattern(coltab+(244*8)+2048,bombL5C244P2,8,1);
		put_vram_pattern(coltab+(245*8)+2048,bombL5C245P2,8,1);

		put_vram_pattern(coltab+(244*8)+4096,bombL5C244P3,8,1);
		put_vram_pattern(coltab+(245*8)+4096,bombL5C245P3,8,1);
    }
    else if ((lvlgfx)==2)
    {
        /* Le Dan0 merde dessus, je sais pas pourquoi, j'ai gardé le RLE ... */
        LoadPatternAndshowAScreenPLE(FOND4_PATTERNRLE,FOND4_COLORRLE,FOND4_NAMERLE);
        show_bomb_tileset();

		put_vram_pattern(coltab+(244*8),bombL4C244P1,8,1);
		put_vram_pattern(coltab+(245*8),bombL4C245P1,8,1);

		put_vram_pattern(coltab+(244*8)+2048,bombL4C244P2,8,1);
		put_vram_pattern(coltab+(245*8)+2048,bombL4C245P2,8,1);

		put_vram_pattern(coltab+(244*8)+4096,bombL4C244P3,8,1);
		put_vram_pattern(coltab+(245*8)+4096,bombL4C245P3,8,1);
        /*ptr = bombColor_bleu05;
        ptr2 = bombColor_bleu04;*/
    }
    else if ((lvlgfx)==1)
    {
        LoadPatternAndshowAScreenPLE(FOND3_PATTERNRLE,FOND3_COLORRLE,FOND3_NAMERLE);
        show_bomb_tileset();

		put_vram_pattern(coltab+(244*8),bombL3C244P1,8,1);
		put_vram_pattern(coltab+(245*8),bombL3C245P1,8,1);

		put_vram_pattern(coltab+(244*8)+2048,bombL3C244P2,8,1);
		put_vram_pattern(coltab+(245*8)+2048,bombL3C245P2,8,1);

		put_vram_pattern(coltab+(244*8)+4096,bombL3C244P3,8,1);
		put_vram_pattern(coltab+(245*8)+4096,bombL3C245P3,8,1);
    }
    else if ((lvlgfx)==4)
    {
        LoadPatternAndshowAScreenPLE(FOND2_PATTERNRLE,FOND2_COLORRLE,FOND2_NAMERLE);
        show_bomb_tileset();

		put_vram_pattern(coltab+(244*8),bombL2C244P1,8,1);
		put_vram_pattern(coltab+(245*8),bombL2C245P1,8,1);

		put_vram_pattern(coltab+(244*8)+2048,bombL2C244P2,8,1);
		put_vram_pattern(coltab+(245*8)+2048,bombL2C245P2,8,1);

		put_vram_pattern(coltab+(244*8)+4096,bombL2C244P3,8,1);
		put_vram_pattern(coltab+(245*8)+4096,bombL2C245P3,8,1);
    }
    else
    {
        LoadPatternAndshowAScreenPLE(FOND1_PATTERNRLE,FOND1_COLORRLE,FOND1_NAMERLE);
        show_bomb_tileset();

		put_vram_pattern(coltab+(244*8),bombL1C244P1,8,1);
		put_vram_pattern(coltab+(245*8),bombL1C245P1,8,1);

		put_vram_pattern(coltab+(244*8)+2048,bombL1C244P2,8,1);
		put_vram_pattern(coltab+(245*8)+2048,bombL1C245P2,8,1);

		put_vram_pattern(coltab+(244*8)+4096,bombL1C244P3,8,1);
		put_vram_pattern(coltab+(245*8)+4096,bombL1C245P3,8,1);


        //ptr = bombColor_vert02;
        //ptr2 = bombColor_vert02;
    }

	
	lvlgfx++;
	if (lvlgfx>5) lvlgfx=1;
    //put_vram_pattern(coltab+2048+(244*8),ptr,8,4);
    //put_vram_pattern(coltab+4096+(244*8),ptr2,8,4);

        /*upload_default_ascii (BOLD);
        			paper(5);
        		fill_color ('0', 0x20 ,4);
        		fill_color ('1', 0x20 ,4);
        		fill_color ('2', 0x20 ,4);
        		fill_color ('3', 0x20 ,4);
        		fill_color ('4', 0x20 ,4);
        		fill_color ('5', 0x20 ,4);
        		fill_color ('6', 0x20 ,4);
        		fill_color ('7', 0x20 ,4);
        		fill_color ('8', 0x20 ,4);
        		fill_color ('9', 0x20 ,4);*/

}


void showSprites()
{
    nb_source = 32-p_source;
    put_vram(sprgen,&sprites[p_source],nb_source<<2);
    if (p_source!=0)
        put_vram(sprgen+(nb_source<<2),sprites,p_source<<2);

    p_source +=4; // 4 = A priori valeur optimale
    if (p_source>32) p_source = 0;
}

void doAnimationDeath(void)
{
    byte cpt;
    char decal=-1;

    delay(5);
    cpt=10;

    while (sprites[PLAYER_CORPS].y!=0)
    {
        cpt--;
        if (cpt==0)
        {
            cpt = 10;
            decal = decal * -1;
        }
        sprites[PLAYER_CORPS].pattern = SPATTERN0;
        sprites[PLAYER_VISAGE].pattern = SPATTERN0+(12<<2);

        sprites[PLAYER_CORPS].x += decal;
        sprites[PLAYER_CORPS].y--;
        sprites[PLAYER_VISAGE].x += decal;
        sprites[PLAYER_VISAGE].y-- ;
        sprites[PLAYER_CAPE].x += decal;
        sprites[PLAYER_CAPE].y--;

        delay(1);
    }
}

void recap(byte i)
{
    destroyAllEnnemy();
    sprites[PLAYER_CORPS].pattern = SPATTERN62;
    sprites[PLAYER_VISAGE].pattern = SPATTERN62;
    sprites[PLAYER_CAPE].pattern = SPATTERN62;
    delay(1);
    screen_off();
    disable_nmi();

    SWITCH_IN_BANK0
    LoadPatternAndshowAScreenPLE(FONT_PATTERNRLE,FONT_COLORRLE,FONT_NAMERLE);

    put_vram_pattern (coltab+65*8,yellow_font,8,26);
    put_vram_pattern (coltab+2048+65*8,yellow_font,8,26);
    put_vram_pattern (coltab+4096+65*8,yellow_font,8,26);

    put_vram_pattern (coltab+48*8,red_font,8,10);
    put_vram_pattern (coltab+2048+48*8,red_font,8,10);
    put_vram_pattern (coltab+4096+48*8,red_font,8,10);

    if (i==WORKFLOW_NEXTLEVEL) center_string(9,"GET READY");
    else center_string(9,"GAME OVER");

    center_string(11,"SCORE");
    center_string(12,str(player.score));

    center_string(14,"BJACK");
    center_string(15,str(player.nblives));

    screen_on();
    enable_nmi();
    delay(1);
    SWITCH_IN_BANK1
    stopmusic();
    if (i==WORKFLOW_NEXTLEVEL) {}
    else startmusic(tune_gameOver,0,LOOP_OFF,gameHz);
    pause();
    stopmusic();
	delay(1);
    reinit();
}

void chooseDiff()
{
    byte sortie;
    sprites[PLAYER_CORPS].pattern = SPATTERN62;
    sprites[PLAYER_VISAGE].pattern = SPATTERN62;
    sprites[PLAYER_CAPE].pattern = SPATTERN62;
    stopmusic();
    destroyAllEnnemy();
	delay(1);
    screen_off();
    disable_nmi();

    SWITCH_IN_BANK0
	if (color_logo==0) LoadPatternAndshowAScreenPLE(TITLE_PATTERNRLE,TITLE_COLORRLE,TITLE_NAMERLE);
	else LoadPatternAndshowAScreenPLE(TITLECOLOR_PATTERNRLE,TITLECOLOR_COLORRLE,TITLECOLOR_NAMERLE);

	pletter(FONT_PATTERNRLE,chrgen+2048);
	pletter(FONT_PATTERNRLE,chrgen+4096);

    pletter(FONT_PATTERNRLE,coltab+2048);
    pletter(FONT_PATTERNRLE,coltab+4096);

    put_vram_pattern (coltab+2048+65*8,yellow_font,8,26);
    put_vram_pattern (coltab+4096+65*8,yellow_font,8,26);

    put_vram_pattern (coltab+2048+48*8,red_font,8,10);
    put_vram_pattern (coltab+4096+48*8,red_font,8,10);

    center_string(10,"CHOOSE DIFFICULTY");
    center_string(12,"1 - EASY");
    center_string(13,"2 - NORMAL");
    center_string(14,"3 - HARD");

	if (control==0) center_string(16,"4 - UP FOR HIGH JUMP   ");
	else            center_string(16,"4 - FIRE2 FOR HIGH JUMP");
	
	center_string(18,"CODING AND SFX - MICHEL LOUVET");
	center_string(19,"GFX - JP MEOLA - L MIRON");

    if (gameHz==60) center_string(21,"NTSC COLECO");
    else center_string(21,"PAL COLECO ");

    screen_on();
    enable_nmi();

    SWITCH_IN_BANK1
    startmusic(tune_intro,0,LOOP_ON,gameHz);
    delay(1);

    sortie=0;
    while (sortie==0)
    {
        if (keypad_1==1)
        {
            difficulty = 3;
            sortie = 1;
        }
        else if (keypad_1==2)
        {
            difficulty = 4;
            sortie = 1;
        }
        else if (keypad_1==3)
        {
            difficulty = 5;
            sortie = 1;
        }
		else if (keypad_1==4)
		{
			while(keypad_1==4) {};
			if (control==0) control=1; else control=0;
			
			if (control==0) center_string(16,"4 - UP FOR HIGH JUMP   ");
			else            center_string(16,"4 - FIRE2 FOR HIGH JUMP");
		}

		if ((joypad_1&FIRE1) || (joypad_1&FIRE2))
		{
			if ((joypad_1&LEFT) || (joypad_1&RIGHT))
			{
				delay(1);
				if (gameHz==60) gameHz=50;
				else gameHz=60;
				
			    if (gameHz==60) center_string(21,"NTSC COLECO");
				else center_string(21,"PAL COLECO ");
				
				while (joypad_1&LEFT) {}
				while (joypad_1&RIGHT) {}
				
				startmusic(tune_intro,0,LOOP_ON,gameHz);
			}
			
			if (keypad_1==7) {cheat=0;center_string(22,"NO CHEAT     ");}
			if (keypad_1==8) {cheat=1;center_string(22,"UNTOUCHABLE  ");}
			if (keypad_1==9) {cheat=2;center_string(22,"INFINITE LIFE");}
			if (keypad_1==5)
			{
				color_logo = 1;
				center_string(22,"COLOR LOGO AFTER GAME OVER");
			}
			if (keypad_1==6)
			{
				color_logo = 0;
				center_string(22,"MONO LOGO AFTER GAME OVER");
			}
		}
		
    }
    stopmusic();
	delay(1);

}

void main(void)
{
	const unsigned char hz=(*(volatile unsigned char*)0x0069);
	int i;
	
	color_logo = 0;
	
	control = 0;
	lvlgfx=1;

	cheat = 0;
    gameHz = hz;
    screen_mode_2_bitmap();

    //	vdp_out(3,0x9f); /* Pour empécher des bugs de dédoublonnage de sprite ? */
    //	vdp_out(4,0x3);
    oddTimer = 0;
    p_source=0;
    nb_source=0;

    disable_nmi();
    screen_off();

    SWITCH_IN_BANK0
    rle2vram(SPATTERNRLE,sprtab);

    delay(1);

    workflow = WORKFLOW_SPLASH;

    while(1)
    {
        /*----------------------------------------------------------
            Boucle de jeu principale
        ------------------------------------------------------------*/
        if (workflow==WORKFLOW_GAME)
        {
			ticks=0;
			if (gameHz==50) cpt=0;
			cpt++;
			if (cpt<5) {
				generateEnnemy();
				moveEnnemy();
				checkPlayerCharCollision();
				controlPlayer();
				checkBombCollision();
				animateBomb();
				timer++;
				oddTimer=oddTimer^1;
				if ((timer&7)==0) timerAnimation+=4;
				if (timerAnimation==12) timerAnimation=0;

				if (nbBombLevel==0) workflow = WORKFLOW_NEXTLEVEL;
			} else cpt=0;

            if (ticks==0) delay(1);
        }
        /*----------------------------------------------------------
            Perte de vie (animation + gestion)
        ------------------------------------------------------------*/
        else if (workflow==WORKFLOW_LOOSE_LIFE)
        {
            /* TODO : A partir de ou est le joueur faire une animation ... */
            destroyAllEnnemy();
            /* BombJack avec une aur‚ole qui monte au ciel ??? */
            doAnimationDeath();

            reinit();
            createEnnemy(200,32,E_VULTURE,E_VULTURE,0,0,0,0,0);
            player.nblives--;
			if (cheat==2) player.nblives++;
            nbEnnemyLevel=0;
            if (player.nblives==0) workflow = WORKFLOW_GAMEOVER;
            else workflow=WORKFLOW_GAME;
        }
        /*----------------------------------------------------------
            Sélection de la difficultée.
        ------------------------------------------------------------*/
        else if (workflow==WORKFLOW_SPLASH)
        {
            chooseDiff();

            workflow = WORKFLOW_TITLE;
        }
       /*----------------------------------------------------------
            Initialisation du niveau 1
        ------------------------------------------------------------*/
        else if (workflow==WORKFLOW_TITLE)
        {
            // Présentation à faire

            // Initialisations pour le 1er niveau
			lvlgfx=1;
            nbLevelPasse=0;
            player.score = 0;
            player.nblives=3;
            init();

            screen_off();
            disable_nmi();

            currentLevel=1;

            showFond(currentLevel);
            initEnnemy();
            nbEnnemyLevel=0;
            drawLevel(currentLevel-1);

            screen_on();
            enable_nmi();

            SWITCH_IN_BANK1
            startmusic(tune_ingame,0,LOOP_ON,gameHz);
            init_allumeBombe(); /* Allume la 1ere bombe */
            perfect=1;
            workflow = WORKFLOW_GAME;

        }
        /*----------------------------------------------------------
            Niveau suivant
        ------------------------------------------------------------*/
        else if (workflow==WORKFLOW_NEXTLEVEL)
        {
            stopmusic();
            nmi_renderBomb	= 0;
            nmiCol_Global=0;
            currentLevel++;
            if (currentLevel>16) currentLevel=1;
            nbEnnemyLevel=0;
            recap(workflow);

            screen_off();
            disable_nmi();
            destroyAllEnnemy();
            createEnnemy(200,32,E_VULTURE,E_VULTURE,0,0,0,0,0);
            showFond(currentLevel);
            drawLevel(currentLevel-1);
            screen_on();
            enable_nmi();
            reinit();

            nbLevelPasse++;
            if (nbLevelPasse==10)
            {
                nbLevelPasse = 0;
                player.nblives++;
                difficulty++;
                if (difficulty>6) difficulty=6;
            }

            SWITCH_IN_BANK1
            stopmusic();
            startmusic(tune_ingame,0,LOOP_ON,gameHz);

            init_allumeBombe(); /* Allume la 1ere bombe */
            perfect=1;
            workflow = WORKFLOW_GAME;
        }
        /*----------------------------------------------------------
            Game Over
        ------------------------------------------------------------*/
        else if (workflow==WORKFLOW_GAMEOVER)
        {
            stop_music();
            recap(workflow);
            workflow = WORKFLOW_SPLASH;
        }
    }
}


void nmi()
{
    byte k;

    s_bomb		*myBomb;
    byte		*myBomb_allume;
    byte		*myBomb_x;
    byte		*myBomb_y;



    ++ticks;

    showSprites();
    sound_nmi();

    /* Redessine le décor derrière les bombes détruites */
    if (nmi_renderBomb==1)
    {
        for (k=0; k<MAXBOMB; k++)
        {
            myBomb = &bomb[k];
            myBomb_allume = &myBomb->allume;
            myBomb_x = &myBomb->x;
            myBomb_y = &myBomb->y;

            if ((*myBomb_allume)==BOMB_DETRUIT)
            {
                (*myBomb_allume) = BOMB_NULL;
                buffer2screen((*myBomb_x),(*myBomb_y));
            }
        }
        nmi_renderBomb = 0;
    }

	//center_string(0,str(player.posx));
}


