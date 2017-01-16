#include <string.h>
#include "main.h"
#include "t6963c.h"
#include "bdd.h"
#include "gameboard.h"

#define ROM_CG_ADDRESS 0x0000

/**
 * Copie la définition d'un caractère depuis la ROM vers la zone de définition
 * des caractères du T6963C.
 * @param positionInRom Position du caractère dans la ROM.
 * @param cgCode Code du caractère dans le t6963c.
 */
void GMB_copyFromRomToCg(unsigned char positionInRom, unsigned char cgCode) {
	unsigned char *rom_cg_address = (unsigned char __xdata *) (ROM_CG_ADDRESS + positionInRom * 8);
	unsigned int video_cg_address = cgCode * 8 + T6963C_ZONE_CG;
	T6963C_autoWrite(video_cg_address, rom_cg_address, 8);
}

/**
 * Initialise les caractères utilisés pendant le jeu.
 */
void GMB_initialize() {
	GMB_copyFromRomToCg( 0, OBSTACLE_A);
	GMB_copyFromRomToCg( 1, OBSTACLE_B);
	GMB_copyFromRomToCg( 2, OBSTACLE_C);
	GMB_copyFromRomToCg( 3, OBSTACLE_D);
	GMB_copyFromRomToCg( 4, OBSTACLE_E);
	GMB_copyFromRomToCg( 5, OBSTACLE_F);
	GMB_copyFromRomToCg( 6, OBSTACLE_G);
	GMB_copyFromRomToCg( 7, OBSTACLE_H);

	GMB_copyFromRomToCg( 8, SNAKE_BODY);
	GMB_copyFromRomToCg( 9, SNAKE_SWALLOW);
	GMB_copyFromRomToCg(10, SNAKE_HEAD);
	GMB_copyFromRomToCg(11, SNAKE_DEAD);

	GMB_copyFromRomToCg(12, FRUIT);
}

/**
 * Dessine un rectangle entre les coordonnées spécifiées.
 * Le carré est dessiné avec des caractères OBSTACLE_*, pour
 * que le serpent ne puisse pas le traverser.
 * @param x0, y0: Coordonnées de l'angle supérieur droit.
 * @param x1, y1: Coordonnées de l'angle inférieur gauche.
 */
void GMB_draw(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1) {
  
   unsigned char i;
   unsigned char j; 	
   
	// Affichage de la premi�re ligne
   	for(i = x0; i <= x1; i++){
	    if(i == x0){
	       T6963C_writeAt(x0, y0, OBSTACLE_A);
	    }
	    else if (i < x1){
	       T6963C_writeAt(i, y0, OBSTACLE_B);
	    }
	    else{
	       T6963C_writeAt(x1, y0, OBSTACLE_C);
	    }
	 }
	
	// Affichage de la derniere ligne
	for(i = x0; i <= x1; i++){
	    if(i == x0){
	       T6963C_writeAt(x0, y1, OBSTACLE_F);
	    }
	    else if (i < x1){
	       T6963C_writeAt(i, y1, OBSTACLE_G);
	    }
	    else{
	       T6963C_writeAt(x1, y1, OBSTACLE_H);
	    }
	}
	
	// Affichage des deux c�t�s
	for(i = y0+1; i <= y1-1; i++){
	   T6963C_writeAt(x0, i, OBSTACLE_D);
	   T6963C_writeAt(x1, i, OBSTACLE_E);	   
	}
	
}

/**
 * Remplit avec des espaces le rectangle défini par les coordonnées.
 * Permet de nettoyer l'intérieur du rectangle dessiné avec GMB_draw.
 * @param x0, y0: Coordonnées de l'angle supérieur droit.
 * @param x1, y1: Coordonnées de l'angle inférieur gauche.
 */
void GMB_clear(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1) {
   unsigned char i;
   unsigned char j;
   
  // Netoyage entre les borne x0,x1 y0,y1 � l'aide du caract�re EMPTY
  for(i = x0; i <= x1; i++){
	  for(j = y0; j <= y1; j++){
		  T6963C_writeAt(i, j, EMPTY);
	  }
  }
}

/**
 * Affiche un texte entouré d'un rectangle.
 * La largeur du rectangle est définie par la longueur du texte.
 * La fonction ne vérifie pas si le texte dépasse les bords de l'écran.
 * @param x0, y0 L'angle supérieur droit du rectangle.
 * @param text Le texte à afficher.
 */
void GMB_display(unsigned char x0, unsigned char y0, char *text) {
	
	// À faire
	char x1;
	char y1;

	unsigned char taille;
	unsigned char i;
   
	// Calcul et Definition des coordon�es des bords inf�rieurs
	taille = strlen(text);
	x1 = x0 + taille + 1;
	y1 = y0 + 2;
	
	
	// Affichage des deux c�t�s
	for(i = 0; i < 3; i++){
	   if(i == 0){
	      T6963C_writeAt(x0, y0, OBSTACLE_A);
	      T6963C_writeAt(x1, y0, OBSTACLE_C);
	   }else if(i == 1){
	      T6963C_writeAt(x0, y0+i, OBSTACLE_D);
	      T6963C_writeAt(x1, y0+i, OBSTACLE_E);
	   } else if(i == 2){
	      T6963C_writeAt(x0, y0+i, OBSTACLE_F);
	      T6963C_writeAt(x1, y0+i, OBSTACLE_H);
	   }
	   
	}
	
	// Affichage des Lignes
	for(i = 0; i < taille; i++){
	   T6963C_writeAt(x0+1+i, y0,   OBSTACLE_B);
	   T6963C_writeAt(x0+1+i, y0+1, text[i]-32);
	   T6963C_writeAt(x0+1+i, y0+2, OBSTACLE_G);
	}
}

#ifdef TEST
int bddGameboardDraw() {
	BddExpectedContent c = {
		"ABBBBBBBBC",
		"D........E",
		"D........E",
		"D........E",
		"FGGGGGGGGH"
	};

	BDD_clear();
	GMB_draw(BDD_SCREEN_X, BDD_SCREEN_Y, BDD_SCREEN_X + BDD_SCREEN_WIDTH - 1, BDD_SCREEN_Y + BDD_SCREEN_HEIGHT - 1);
	return BDD_assert(c, "GMBD");
}

int bddGameboardClear() {
	BddExpectedContent c = {
		"..........",
		".        .",
		".        .",
		".        .",
		".........."
	};

	BDD_clear();
	GMB_clear(BDD_SCREEN_X + 1, BDD_SCREEN_Y + 1, BDD_SCREEN_X + BDD_SCREEN_WIDTH - 2, BDD_SCREEN_Y + BDD_SCREEN_HEIGHT - 2);
	return BDD_assert(c, "GMBC");
}

int bddGameboardDisplay() {
	BddExpectedContent c = {
		"..........",
		".ABBBBBC..",
		".D TXT E..",
		".FGGGGGH..",
		".........."
	};

	BDD_clear();
	GMB_display(BDD_SCREEN_X + 1, BDD_SCREEN_Y + 1, " TXT ");
	return BDD_assert(c, "GMBT");
}

int testGameboard() {
	int testsInError = 0;

	testsInError += bddGameboardDraw();
	testsInError += bddGameboardClear();
	testsInError += bddGameboardDisplay();

	return testsInError;
}
#endif