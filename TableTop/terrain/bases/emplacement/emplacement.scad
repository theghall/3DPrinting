use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>
use </Users/dollarg/Documents/3DPrinting/scad_modules/table_top_base_modules.scad>
use </Users/dollarg/Documents/3DPrinting/scad_modules/arc_module.scad>
use </Users/dollarg/Documents/3DPrinting/TableTop/terrain/bases/tiled/tiled_floor_base.scad>

emplacement();
translate([90,0,0])
difference() {
emplacement(diameter = 95);
translate([0,-37,0])
cube([100,50,8], center=true);
}


module emplacement(diameter = 60) {
    tiled_floor_base(diameter);
    difference() {
        // Front Curve
        translate([0,0,9])
        hollowCylinder(d=diameter, h=18, wallWidth=3);
        
        //Removes backside of above cylinser
        translate([0,0,3.1])
        linear_extrude(17)
        arc(diameter/2, [180,360], 1, 24);
        
        // Cutouts
        translate([-10,10,16.6])
        rotate([0,0,47])
        cube([5,75,3], center=true);
        translate([0,30,16.6])
        cube([5,70,3], center=true);
        translate([10,10,16.6])
        rotate([0,0,47])
        cube([75,5,3], center=true);
        translate([0,0,6])
        rotate([0,0,15])
        curvedSheet(width=2, height=2, radius=(diameter/2) + 0.5, angle=150);
    }
}


module smallBaseMocks() {
    translate([-30,5,0])
    cylinder(d=30,h=3);
    translate([0,30,0])
    cylinder(d=30,h=3);
    translate([30,5,0])
    cylinder(d=30,h=3);
}
