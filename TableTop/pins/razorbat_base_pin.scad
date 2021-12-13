rotate([90,0,0])
rotate([0,0,67.5])
pin();

translate([0,10,0]) {
    difference() {
        cylinder(d=8, h=2, $fn=4);
        translate([0,0,-1])
        pin();
    }
}
translate([0,20,0]) {
    difference() {
        cylinder(d=8, h=2, $fn=4);
        translate([0,0,-1])
        pin();
    }
}

translate([0,30,0]) {
    difference() {
        cylinder(d=8, h=2, $fn=4);
        translate([0,0,-1])
        pin();
    }
}

module pin() {
 cylinder(h=40, r=1.05, $fn=8);
}