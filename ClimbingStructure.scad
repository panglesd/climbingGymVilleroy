/*
  File:
  ClimbingStructure.scad

  Description:
  The structure for climbing

  Auteur : Paul-Elliot Anglèes d'Auriac

  Licence : CC-BY-SA 3.0
*/


$largeur = 4.7;
$longueur = 7.5;
$rallonge = 29;

$epaisseur_panneau = 1.8;
$longueur_panneau = 115+$largeur*2;
$largeur_panneau = 100;

$show_panneau = false;

use <GuestRoomForClimbing.scad>

% guestRoomForClimbing();


/**************************************************/
// la structure, côté voisin
/**************************************************/

for(i = [0:3]) {
  translate([(136-120-$largeur)/2+i*(120/3), 260-20-$longueur,$largeur]) cube([$largeur, $longueur, 240+$rallonge+$largeur]);  // barre verticale
  echo(str("poutre de dimension", [$longueur, $largeur, 240+$rallonge+$largeur]));
 }
translate([(136-120-$largeur)/2,260-20-$longueur,0]) cube([120+$largeur, $longueur, $largeur]);  // barre horizontale basse
echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));
translate([(136-120-$largeur)/2,260-20-$longueur,240+$rallonge+$largeur+$largeur]) cube([120+$largeur, $longueur, $largeur]);  // barre horizontale haute
echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));

// Tasseaux
for(i = [0:2]) {
  if(i%2!=0) { // 2 tasseaux par interval
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 260-20-$longueur,(240+$rallonge+$largeur)/6*2+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 260-20-$longueur,(240+$rallonge+$largeur)/6*4+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
  }
  else { // 3 tasseaux par interval
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 260-20-$longueur,(240+$rallonge+$largeur)/6*1+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 260-20-$longueur,(240+$rallonge+$largeur)/6*3+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 260-20-$longueur,(240+$rallonge+$largeur)/6*5+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
  }
 }

/**************************************************/
// la structure côté salon
/**************************************************/

for(i = [0:3]) {
  translate([(136-120-$largeur)/2+i*(120/3), 0,$largeur]) cube([$largeur, $longueur, 240+$rallonge+$largeur]);  // barre verticale
  echo(str("poutre de dimension", [$longueur, $largeur, 240+$rallonge+$largeur]));
 }

translate([(136-120-$largeur)/2,0,0]) cube([120+$largeur, $longueur, $largeur]);  // barre horizontale basse
echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));
translate([(136-120-$largeur)/2,0,240+$largeur+$rallonge+$largeur]) cube([120+$largeur, $longueur, $largeur]);  // barre horizontale haute
echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));

// Tasseaux
for(i = [0:2]) {
  if(i%2!=0) { // 2 tasseaux par interval
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 0,(240+$rallonge+$largeur)/6*2+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 0,(240+$rallonge+$largeur)/6*4+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));
  }
  else { // 3 tasseaux par interval
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 0,(240+$rallonge+$largeur)/6*1+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 0,(240+$rallonge+$largeur)/6*3+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 0,(240+$rallonge+$largeur)/6*5+$largeur])  cube([(120/3)-$largeur,$longueur,$largeur]);
    echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));
  }
 }


/**************************************************/
// la structure plafond
/**************************************************/
/*
// barre de soutien plate
translate([(136-120-$largeur)/2,260-20-$longueur,240+$rallonge+$largeur]) cube([120+$largeur, $longueur, $largeur]); // côté voisin
echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));
translate([(136-120-$largeur)/2,0,240+$rallonge+$largeur]) cube([120+$largeur, $longueur, $largeur]); // côté salon
echo(str("poutre de dimension", [$longueur, $largeur, 120+$largeur]));

// barres verticales pour ajouter $rallonge cm de hauteur
for(i = [0:3]) {
  translate([(136-120-$largeur)/2+i*(120/3), 0,240+$largeur+$largeur]) cube([$largeur, $longueur, $rallonge-$largeur]); // côté salon
  echo(str("poutre de dimension", [$longueur, $largeur, $rallonge-$largeur]));
 }
for(i = [0:3]) {
  translate([(136-120-$largeur)/2+i*(120/3), 260-20-$longueur,240+$largeur+$largeur]) cube([$largeur, $longueur, $rallonge-$largeur]);  // côté voisin
  echo(str("poutre de dimension", [$longueur, $largeur, $rallonge-$largeur]));
 }
*/
// poutres traversantes
for(i = [0:3]) {
  translate([(136-120-$largeur)/2+i*(120/3), 0, 240+$largeur+$largeur+$rallonge]) cube([$largeur,240,$longueur]);  // barre longue
  echo(str("poutre de dimension", [$longueur, $largeur, 240]));
 }

// Tasseaux
for(i = [0:2]) {
  if(i%2!=0) { // 2 tasseaux par interval
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 240/6*2+$largeur,240+$largeur+$largeur+$rallonge])  cube([(120/3)-$largeur,$largeur, $longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3), 240/6*4+$largeur,240+$largeur+$largeur+$rallonge])  cube([(120/3)-$largeur,$largeur, $longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
  }
  else { // 3 tasseaux par interval
    translate([$largeur+(136-120-$largeur)/2+i*(120/3),240/6*1+$largeur,240+$largeur+$largeur+$rallonge])  cube([(120/3)-$largeur,$largeur, $longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3),240/6*3+$largeur,240+$largeur+$largeur+$rallonge])  cube([(120/3)-$largeur,$largeur, $longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
    translate([$largeur+(136-120-$largeur)/2+i*(120/3),240/6*5+$largeur,240+$largeur+$largeur+$rallonge])  cube([(120/3)-$largeur,$largeur, $longueur]);
    echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
  }
 }

/**************************************************/
// Le plan incliné
/**************************************************/

translate([-$largeur*2,235,60]) {
  rotate(a=[20,0,0])  {
    // translate([0,0,0]){
    for(i = [0:3]) {
      translate([$largeur+(136-120-$largeur)/2+i*(120/3),0,0]) cube([$largeur, $longueur, 240]);
      echo(str("poutre de dimension", [$longueur, $largeur, 240]));
    }
    for(i = [0:2]) {
      if(i%2!=0) { // 2 tasseaux par interval
	translate([$largeur+$largeur+(136-120-$largeur)/2+i*(120/3), 0, 240/6*2+$largeur])  cube([(120/3)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
	translate([$largeur+$largeur+(136-120-$largeur)/2+i*(120/3), 0, 240/6*4+$largeur])  cube([(120/3)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
      }
      else { // 3 tasseaux par interval
	translate([$largeur+$largeur+(136-120-$largeur)/2+i*(120/3), 0, 240/6*1+$largeur])  cube([(120/3)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
	translate([$largeur+$largeur+(136-120-$largeur)/2+i*(120/3), 0, 240/6*3+$largeur])  cube([(120/3)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
	translate([$largeur+$largeur+(136-120-$largeur)/2+i*(120/3), 0, 240/6*5+$largeur])  cube([(120/3)-$largeur,$longueur, $largeur]);
	echo(str("poutre de dimension", [$longueur, $largeur, (120/3)-$largeur]));
      }
    }
    // panneaux du plan incliné
    if($show_panneau) {
      translate([(136-120-$largeur)/2+$largeur,-$epaisseur_panneau,10]) cube([$longueur_panneau,$epaisseur_panneau,$largeur_panneau]);
      echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
      translate([(136-120-$largeur)/2+$largeur,-$epaisseur_panneau,$largeur_panneau+10]) cube([$longueur_panneau,$epaisseur_panneau,$largeur_panneau]);
      echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
      translate([(136-120-$largeur)/2+$largeur,-$epaisseur_panneau,2*$largeur_panneau+10]) cube([$longueur_panneau,$epaisseur_panneau,22]);
      echo(str("panneau OBS de dimension", [$longueur_panneau, 22, $epaisseur_panneau]));
    }
  }
}

/**************************************************/
// les panneaux
/**************************************************/
if($show_panneau){
  // Panneaux côté salon
  translate([(136-120-$largeur)/2,$longueur,0]) cube([$longueur_panneau,$epaisseur_panneau,$largeur_panneau]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
  translate([(136-120-$largeur)/2,$longueur,$largeur_panneau]) cube([$longueur_panneau,$epaisseur_panneau,$largeur_panneau]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
  translate([(136-120-$largeur)/2,$longueur,2*$largeur_panneau]) cube([$longueur_panneau,$epaisseur_panneau,240+$rallonge+2*$largeur-2*$largeur_panneau]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, 240+$rallonge+2*$largeur-2*$largeur_panneau, $epaisseur_panneau]));

  // Panneaux côté plafond
  translate([(136-120-$largeur)/2,$longueur+$epaisseur_panneau,240+$rallonge+2*$largeur-$epaisseur_panneau]) cube([$longueur_panneau,$largeur_panneau,$epaisseur_panneau]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, $largeur_panneau, $epaisseur_panneau]));
  translate([(136-120-$largeur)/2,$longueur+$epaisseur_panneau+$largeur_panneau,240+$rallonge+2*$largeur-$epaisseur_panneau]) cube([$longueur_panneau,45,$epaisseur_panneau]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, 45, $epaisseur_panneau]));
  // Panneaux côté voisins
  translate([(136-120-$largeur)/2,240-$longueur-$epaisseur_panneau,0]) cube([$longueur_panneau,$epaisseur_panneau,69]);
  echo(str("panneau OBS de dimension", [$longueur_panneau, 69, $epaisseur_panneau]));
 }



