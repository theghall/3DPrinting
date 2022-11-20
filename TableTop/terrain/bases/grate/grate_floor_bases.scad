use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>
use </Users/dollarg/Documents/3DPrinting/scad_modules/table_top_base_modules.scad>

grateFloor(4);

module grateFloor(baseIdx=0, height=3) {
 
    difference() {
        translate([0,0,-0.3])
        union() {
            translate([40,0,0])
            rotate([0,0,35])
            gridLines(height);
            translate([-10,0,0])
            rotate([0,0,-35])
            gridLines(height);
        }
         
    translate([10,35,-2])
    baseEdger(baseIdx, height+3, true);
    }
    translate([10,35,-0.3])
    hollowCylinder(d=20, h=height+0.1, wallWidth=1);

}

module gridLines(height) {
    for (i=[1:1:26]) {
           translate([0,i * 3.2,0])
           cube([60,2,height], center=true);
    }
}


