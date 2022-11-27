use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>
use </Users/dollarg/Documents/3DPrinting/scad_modules/table_top_base_modules.scad>
use </Users/dollarg/Documents/3DPrinting/scad_modules/arc_module.scad>

//rotate([0,-90,0])
rotate([0,0,140])
difference() {
    union() {
//        translate([0,0,38])
//        cylinder(d=26, h=6, $fn=128);

        difference() {
            cylinder(d=30, h=38);
            translate([0,0,-0.1])
            cylinder(d=25, h=35);
        }
    }
//    cylinder(d=24, h=45);
    translate([0,0,15])
    rotate([0,0,45])
    cube([40,15,44], center=true);
}

translate([0,0,42])
linear_extrude(6)
difference() {
arc(20, [180,360], 1, 128);
arc(11, [180,360], 1, 128);
}


translate([0,0,37])
difference() {
    linear_extrude(6)
    difference() {
    arc(20, [180,360], 1, 128);
    arc(15, [180,360], 1, 128);
    }
    translate([18.5,-3,3])
    rotate([0,0,90])
    rotate([0,90,0])
    cylinder(d=2, h=6, $fn=128);
    translate([-18.5,-3,3])
    rotate([0,0,90])
    rotate([0,90,0])
    cylinder(d=2, h=6, $fn=128);
}

