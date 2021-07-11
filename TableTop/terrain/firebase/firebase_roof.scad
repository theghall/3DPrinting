difference() {
    hull () {
        cube([135,90,1]);
        translate([5,5,5]) 
        cube([125,80,1]);
    }
    cylinderHoles();
}

module cylinderHoles () {
    translate([7,10,-6.1])
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
    cylinder(h=3, r=1.1, $fn=8);
}
