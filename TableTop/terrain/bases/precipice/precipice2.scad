use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>
use </Users/dollarg/Documents/3DPrinting/scad_modules/table_top_base_modules.scad>

translate([15,15,0])
union() {
    // Inverted
    rockLayer(vector = [1.5,1.5,0.5]);
    translate([0,0,1])
    rockLayer(vector = [1.1,1.1,1]);
    translate([0,0,3])
    rockLayer(vector = [0.9,0.9,1]);
    translate([0,0,5])
    rockLayer(vector = [0.68,0.68,1]);
  
}

translate([-30,-30,0])
rockLayer(vector = [1.58,1.58,3]);

// Base
difference() {
plainBaseInsert(0);
translate([-7,-7,2])
rockLayer(vector = [0.7,0.7,1]);
}


module rockLayer(vector = [1,1,1]) {
  scale(vector) {
      union() {
        rotate([0,0,15])
        cube([10,10,2]);
        rotate([0,0,-20])
        cube([10,10,2]);
       }
   }
}