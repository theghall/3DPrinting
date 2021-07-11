difference() {
 //   hull () {
 //       cube([135,90,1]);
        cube([135,80,2]);
        translate([13,7,-1])
        cube([110,65,4]);
 
    //}
    cylinderHoles();
}

module cylinderHoles () {
    translate([8,10,-6.1])
    union() {
        translate([0,0,6])
        cylinderHole();
        translate([120,0,6])
        cylinderHole();
        translate([120,65,6])
        cylinderHole();
        translate([0,65,6])
        cylinderHole();
    }
}

module cylinderHole () {
    cylinder(h=3, r=1.25, $fn=8);
}
