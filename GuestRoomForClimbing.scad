/*
  File:
  GuestRoomForClimbing.scad

  Description:
  The guest room in 45 rue VIlleroy place for climbing

  Auteur : Paul-Elliot Anglèes d'Auriac

  Licence : CC-BY-SA 3.0
*/

module guestRoomForClimbing() {
union() {
    translate([0,260,0]) cube([136,4,300]);

    translate([-4,260-49,0]) cube([4,49,300]);

    translate([136,260-59,0]) cube([4,59,300]);

    translate([136,260-59,0]) cube([23,4,300]);

    difference() {
        translate([136+23,260-59-126,0]) cube([4,126,300]);
        translate([136+23-1, 75+14, 100]) cube([6,(126-3*14)/2,160]);
        translate([136+23-1, 75+14+(126-3*14)/2+14, 100]) cube([6,(126-3*14)/2,160]);
    }

    translate([136,260-59-126-4,0]) cube([23,4,300]);

    translate([136,260-59-126-75,0]) cube([4,75,300]);

    translate([0,-4,0]) cube([136,4,300]);
    
    translate([0,260-20,180]) cube([136,20,120]);

    translate([-60,35,0]) cube([195,120,50]);
*    translate([10,25,0]) cube([120,195,50]);
}

}
