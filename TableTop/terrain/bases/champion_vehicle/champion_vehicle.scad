use <BOSL/math.scad>;
use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>

rockLevel(rands(12,30,71,45));

difference() {
    difference() {
        translate([0,0,5])
        scale([0.7,0.7,1])
        rockLevel(rands(12,30,71,12));
        translate([-20,-20,7])
        rotate([4.4,0,0])
        cube([40,20,3]);
        translate([-20,0,7.5])
        rotate([4.4,0,0])
        cube([40,20,3]);
    }
translate([-17,0,7.5])
cube([34,0.5,0.5]);
translate([16.6,0,5])
cube([0.5,0.5,3]);
translate([-16.6,0,5])
cube([0.5,0.5,3]);
}

module rockLevel(zAngleVector) {
    for (i=[0:70]) {
        vector = [0,0,sum(select(zAngleVector, [0:1:i]))];
        rotate(vector)
        cube([18,18,5]);
    }
}

function select(vector, indices) = [ for (index = indices) vector[index] ];