use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>
use </Users/dollarg/Documents/3DPrinting/scad_modules/table_top_base_modules.scad>

translate([3,3,39.5])
scale([0.8,0.8,0.65])
upperRockLayer();

difference() {
union() {

    difference() {
        translate([3,3,12])
        scale([0.9,0.9,5.5])
        upperRockLayer();
        translate([4,4,27])
        rotate([0,0,45])
        cube([5.5,6,3.1], center=true);
        translate([13,13,32])
        rotate([120,0,-45])
        cylinder(d=3.1, h=6, $fn=128);
    }


    translate([6.5,6.5,0])
    cylinder(d=23,h=3);
    translate([4,4,22])
    union() {
        translate([0,0,-12])
        lowerRockLayer();
        translate([0,0,-14])
        scale([1.05,1.05,1])
        lowerRockLayer();
        translate([0,0,-15])
        scale([1.11,1.11,1])
        lowerRockLayer();
        translate([0,0,-19])
        scale([1.27,1.27,2])
        lowerRockLayer();
        
    }
}
translate([3.5,3.5,-0.1])
cylinder(d=13.5, h=35.5);


}
translate([3.5,3.5,-0.1])
difference() {
    cylinder(d=14,h=36);
    translate([0,0,-0.1])
    cylinder(d=13.5, h=35.5);
}


module upperRockLayer() {
    union() {
        translate([0.5,0.5,0])
        cube([10,10,5]);
        rotate([0,0,8])
        cube([10,10,5]);
        rotate([0,0,-12])
        cube([10,10,5]);
    }
}

module lowerRockLayer() {
      union() {
        rotate([0,0,15])
        cube([10,10,2]);
        rotate([0,0,-20])
        cube([10,10,2]);
    }
}