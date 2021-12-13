cylinder(r=5, h=4, $fn=6pru);
difference() {
    translate([0,0,4])
    cylinder(r=2, h=1);
    translate([0,0,1])
    cylinder(h=5,d=2.0, $fn=128);
}
