use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>

upperRockLayer();
for (i=[-1:-1:-10]) {
    scaleVector = 1 - (abs(i) * 0.05);
    translate([0,0,i])
    scale([scaleVector, scaleVector, scaleVector])
    upperRockLayer();
}

translate([0,0,-12])
lowerRockLayer();
translate([0,0,-14])
scale([1.05,1.05,1])
lowerRockLayer();
translate([0,0,-15])
scale([1.11,1.11,1])
lowerRockLayer();
translate([0,0,-17])
scale([1.27,1.27,1])
lowerRockLayer();
translate([0,0,-19])
scale([1.6,1.6,1])
lowerRockLayer();

module upperRockLayer() {
    union() {
        translate([0.5,0.5,0])
        cube([10,10,2]);
        rotate([0,0,8])
        cube([10,10,2]);
        rotate([0,0,-12])
        cube([10,10,2]);
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