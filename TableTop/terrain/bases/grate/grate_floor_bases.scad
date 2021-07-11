use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>


module grateFloor(baseIdx) {
    wallWidths = [43,37,32];
    baseSizes = [24,38,48];

    difference() {
        translate([0,0,-0.3])
        union() {
            translate([40,0,0])
            rotate([0,0,35])
            gridLines();
            translate([-10,0,0])
            rotate([0,0,-35])
            gridLines();
        }
         
    translate([10,35,0])
    hollowCylinder(d=110, h=10, wallWidth = wallWidths[baseIdx]);
    }
    translate([10,35,0])
    hollowCylinder(d=baseSizes[baseIdx],h=3,wallWidth=1);
}

module gridLines() {
    for (i=[1:1:26]) {
           translate([0,i * 3.2,0])
           cube([60,2,2.5], center=true);
    }
}


