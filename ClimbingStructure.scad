/*
  File:
  ClimbingStructure.scad

  Description:
  The structure for climbing

  Auteur : Paul-Elliot Anglèes d'Auriac

  Licence : CC-BY-SA 3.0
*/


$largeur = 6.3;
$longueur = 17.5;
$largeur_fine = 6.3;
$longueur_fine = 7.5;
$rallonge = 15;

$epaisseur_panneau = 1.8;
$longueur_panneau = 115+$largeur*2;
$largeur_panneau = 100;

$largeur_barre_basse = 100;

$nb_tasseaux = 2;


$show_panneau = true;

use <GuestRoomForClimbing.scad>

* guestRoomForClimbing();


/**************************************************/
// la structure, côté voisin
/**************************************************/

for(i = [0:$nb_tasseaux]) {
  if(i%2==0) {
    translate([(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 260-20-$longueur,$largeur]) cube([$largeur, $longueur, 240+$rallonge]);  // barre verticale
    echo(str("poutre de dimension", [$longueur, $largeur, 240+$rallonge]));
  }
  else {
    translate([(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 260-20-$longueur_fine,$largeur]) cube([$largeur_fine, $longueur_fine, 240+$rallonge]);  // barre verticale
    echo(str("poutre de dimension", [$longueur_fine, $largeur_fine, 240+$rallonge]));
    }
 }
translate([(136-$largeur_barre_basse-$largeur)/2,260-20-$longueur,0]) cube([$largeur_barre_basse+$largeur, $longueur, $largeur]);  // barre horizontale basse
echo(str("poutre de dimension", [$longueur, $largeur, $largeur_barre_basse+$largeur]));
translate([(136-$largeur_barre_basse-$largeur)/2,260-20-$longueur,240+$rallonge+$largeur]) cube([$largeur_barre_basse+$largeur, $longueur, $largeur]);  // barre horizontale haute
echo(str("poutre de dimension", [$longueur, $largeur, $largeur_barre_basse+$largeur]));

// Tasseaux
for(i = [0:$nb_tasseaux-1]) {
  if(i%2!=0) { // 2 tasseaux par interval
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 260-20-$largeur,(240+$rallonge+$largeur)/6*2+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur,$longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 260-20-$largeur,(240+$rallonge+$largeur)/6*4+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur,$longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
  }
  else { // 3 tasseaux par interval
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 260-20-$largeur,(240+$rallonge+$largeur)/6*1+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur,$longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 260-20-$largeur,(240+$rallonge+$largeur)/6*3+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur,$longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 260-20-$largeur,(240+$rallonge+$largeur)/6*5+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur,$longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
  }
 }

/**************************************************/
// la structure côté salon
/**************************************************/

for(i = [0:$nb_tasseaux]) {
  if(i%2==0) {
    translate([(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 0,$largeur]) cube([$largeur, $longueur, 240+$rallonge]);  // barre verticale
    echo(str("poutre de dimension", [$longueur, $largeur, 240+$rallonge]));
  }
  else {
    translate([(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), $longueur-$longueur_fine,$largeur]) cube([$largeur_fine, $longueur_fine, 240+$rallonge]);  // barre verticale
    echo(str("poutre de dimension", [$longueur, $largeur, 240+$rallonge]));      
  }
 }

translate([(136-$largeur_barre_basse-$largeur)/2,0,0]) cube([$largeur_barre_basse+$largeur, $longueur, $largeur]);  // barre horizontale basse
echo(str("poutre de dimension", [$longueur, $largeur, $largeur_barre_basse+$largeur]));
translate([(136-$largeur_barre_basse-$largeur)/2,0,240+$largeur+$rallonge]) cube([$largeur_barre_basse+$largeur, $longueur, $largeur]);  // barre horizontale haute
echo(str("poutre de dimension", [$longueur, $largeur, $largeur_barre_basse+$largeur]));

// Tasseaux
for(i = [0:$nb_tasseaux-1]) {
  if(i%2!=0) { // 2 tasseaux par interval
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), $longueur-$longueur_fine,(240+$rallonge+$largeur)/6*2+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur_fine,$largeur_fine]);
    echo(str("poutre de dimension", [$longueur_fine, $largeur_fine, $largeur_barre_basse+$largeur]));
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), $longueur-$longueur_fine,(240+$rallonge+$largeur)/6*4+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur_fine,$largeur_fine]);
    echo(str("poutre de dimension", [$longueur_fine, $largeur_fine, $largeur_barre_basse+$largeur]));
  }
  else { // 3 tasseaux par interval
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), $longueur-$longueur_fine,(240+$rallonge+$largeur)/6*1+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur_fine,$largeur_fine]);
    echo(str("poutre de dimension", [$longueur_fine, $largeur_fine, $largeur_barre_basse+$largeur]));
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), $longueur-$longueur_fine,(240+$rallonge+$largeur)/6*3+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur_fine,$largeur_fine]);
    echo(str("poutre de dimension", [$longueur_fine, $largeur_fine, $largeur_barre_basse+$largeur]));
    translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), $longueur-$longueur_fine,(240+$rallonge+$largeur)/6*5+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur_fine,$largeur_fine]);
    echo(str("poutre de dimension", [$longueur_fine, $largeur_fine, $largeur_barre_basse+$largeur]));
  }
 }


/**************************************************/
// la structure plafond
/**************************************************/
/*
// barre de soutien plate
translate([(136-$largeur_barre_basse-$largeur)/2,260-20-$longueur,240+$rallonge+$largeur]) cube([$largeur_barre_basse+$largeur, $longueur, $largeur]); // côté voisin
echo(str("poutre de dimension", [$longueur, $largeur, $largeur_barre_basse+$largeur]));
translate([(136-$largeur_barre_basse-$largeur)/2,0,240+$rallonge+$largeur]) cube([$largeur_barre_basse+$largeur, $longueur, $largeur]); // côté salon
echo(str("poutre de dimension", [$longueur, $largeur, $largeur_barre_basse+$largeur]));

// barres verticales pour ajouter $rallonge cm de hauteur
for(i = [0:$nb_tasseau]) {
  translate([(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 0,240+$largeur+$largeur]) cube([$largeur, $longueur, $rallonge-$largeur]); // côté salon
  echo(str("poutre de dimension", [$longueur, $largeur, $rallonge-$largeur]));
 }
for(i = [0:$nb_tasseau]) {
  translate([(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 260-20-$longueur,240+$largeur+$largeur]) cube([$largeur, $longueur, $rallonge-$largeur]);  // côté voisin
  echo(str("poutre de dimension", [$longueur, $largeur, $rallonge-$largeur]));
 }
*/
// poutres traversantes
for(i = [0:$nb_tasseaux]) {
  translate([(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 0, 240+$largeur+$largeur+$rallonge]) cube([$largeur,240,$longueur]);  // barre longue
  echo(str("poutre de dimension", [$longueur, $largeur, 240]));
 }

// Tasseaux
/* for(i = [0:$nb_tasseaux-1]) { */
/*   if(i%2!=0) { // 2 tasseaux par interval */
/*     translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 240/6*2+$largeur,240+$largeur+$largeur+$rallonge])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur, $longueur]); */
/*     echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur])); */
/*     translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 240/6*4+$largeur,240+$largeur+$largeur+$rallonge])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur, $longueur]); */
/*     echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur])); */
/*   } */
/*   else { // 3 tasseaux par interval */
/*     translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux),240/6*1+$largeur,240+$largeur+$largeur+$rallonge])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur, $longueur]); */
/*     echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur])); */
/*     translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux),240/6*3+$largeur,240+$largeur+$largeur+$rallonge])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur, $longueur]); */
/*     echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur])); */
/*     translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux),240/6*5+$largeur,240+$largeur+$largeur+$rallonge])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$largeur, $longueur]); */
/*     echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur])); */
/*   } */
/*  } */

/**************************************************/
// Le plan incliné
/**************************************************/

translate([-$largeur*2,235,60]) {
  rotate(a=[20,0,0])  {
    // translate([0,0,0]){
    for(i = [0:$nb_tasseaux]) {
      translate([$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux),0,0]) cube([$largeur, $longueur, 240]);
      echo(str("poutre de dimension", [$longueur, $largeur, 240]));
    }
    for(i = [0:$nb_tasseaux-1]) {
      if(i%2!=0) { // 2 tasseaux par interval
	translate([$largeur+$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 0, 240/6*2+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
	translate([$largeur+$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 0, 240/6*4+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
      }
      else { // 3 tasseaux par interval
	translate([$largeur+$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 0, 240/6*1+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
	translate([$largeur+$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 0, 240/6*3+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
	translate([$largeur+$largeur+(136-$largeur_barre_basse-$largeur)/2+i*($largeur_barre_basse/$nb_tasseaux), 0, 240/6*5+$largeur])  cube([($largeur_barre_basse/$nb_tasseaux)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, ($largeur_barre_basse/$nb_tasseaux)-$largeur]));
      }
    }
    // panneaux du plan incliné
    if($show_panneau) {
      translate([74,-$epaisseur_panneau,10]){
	difference () 
	  {
	cube([67.5,$epaisseur_panneau, 230]);
	translate([67.5-15,-1,-1]) cube([20,3,30]);
	translate([67.5-15,-1,210]) cube([20,3,30]);
	  }
	
      } 
      translate([74-67.5,-$epaisseur_panneau,10]){
	difference () 
	  {
	cube([67.5,$epaisseur_panneau, 230]);
	translate([-1,-2,-1]) cube([30,5,30]);
	translate([19,-2,210]) cube([10,5,30]);
	  }
	
      } 
      echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
      echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
      /* translate([(136-$largeur_barre_basse-$largeur)/2+$largeur,-$epaisseur_panneau,$largeur_panneau+10]) cube([$longueur_panneau,$epaisseur_panneau,$largeur_panneau]); */
      /* echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau])); */
      /* translate([(136-$largeur_barre_basse-$largeur)/2+$largeur,-$epaisseur_panneau,2*$largeur_panneau+10]) cube([$longueur_panneau,$epaisseur_panneau,22]); */
      /* echo(str("panneau OBS de dimension", [$longueur_panneau, 22, $epaisseur_panneau])); */
    }
  }
}

/**************************************************/
// les panneaux
/**************************************************/
if($show_panneau){
  // Panneaux côté salon
  translate([0,$longueur,240+$rallonge+2*$largeur-250]) cube([67.5,1.8,250]);
  echo(str("panneau OBS de dimension", [[67.5,1.8,250]]));
  translate([67.5,$longueur,240+$rallonge+2*$largeur-250]) cube([67.5,1.8,250]);
  echo(str("panneau OBS de dimension", [[67.5,1.8,250]]));
  /* translate([(136-$largeur_barre_basse-$largeur)/2,$longueur,0]) cube([$longueur_panneau,$epaisseur_panneau,$largeur_panneau]); */
  /* echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau])); */
  /* translate([(136-$largeur_barre_basse-$largeur)/2,$longueur,$largeur_panneau]) cube([$longueur_panneau,$epaisseur_panneau,$largeur_panneau]); */
  /* echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau])); */
  /* translate([(136-$largeur_barre_basse-$largeur)/2,$longueur,2*$largeur_panneau]) cube([$longueur_panneau,$epaisseur_panneau,240+$rallonge+2*$largeur-2*$largeur_panneau]); */
  /* echo(str("panneau OBS de dimension", [$longueur_panneau, 240+$rallonge+2*$largeur-2*$largeur_panneau, $epaisseur_panneau])); */

  // Panneaux côté plafond
  translate([0,$longueur+$epaisseur_panneau,240+$rallonge+2*$largeur+$longueur]) cube([67.5,133, $epaisseur_panneau]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
  translate([67.5,$longueur+$epaisseur_panneau,240+$rallonge+2*$largeur+$longueur]) cube([67.5,133, $epaisseur_panneau]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
  /* translate([(136-$largeur_barre_basse-$largeur)/2,$longueur+$epaisseur_panneau+$largeur_panneau,240+$rallonge+2*$largeur+$longueur]) cube([$longueur_panneau,45,$epaisseur_panneau]); */
  /* echo(str("panneau OBS de dimension", [$longueur_panneau, 45, $epaisseur_panneau])); */

  // Panneaux côté voisins
  translate([(136-$largeur_barre_basse-$largeur)/2,240/* -$longueur-$epaisseur_panneau */,0]) cube([$longueur_panneau,$epaisseur_panneau,69]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, 69, $epaisseur_panneau]));
 }



