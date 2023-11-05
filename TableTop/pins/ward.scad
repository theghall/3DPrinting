
difference() {
    color("blue")
    difference() {
        cylinder(d=12,h=3,$fn=10);
        translate([0,0,2])
        cylinder(d=11,h=1.5,$fn=96);
    }
 
    translate([-3.3,-0.5,1.5])
    color("gold")
    union() {
        cube([1.5,3,2]);
        translate([0.7,3,0])
        cylinder(d=1.4,h=2, $fn=128);

        translate([1.3,0,0])
        cube([1.4,3.5,2]);
        translate([2,3.5,0])
        cylinder(d=1.4,h=2, $fn=128);

        translate([2.6,0,0])
        cube([1.3,4,2]);
        translate([3.2,4,0])
        cylinder(d=1.4,h=2, $fn=128);

        translate([3.9,0,0])
        cube([1.4,3.8,2]);
        translate([4.6,3.8,0])
        cylinder(d=1.4,h=2, $fn=128);

        translate([5.3,0,0])
        cube([1.4,2,2]);
        translate([6,2,0])
        cylinder(d=1.4,h=2, $fn=128);
        
        translate([3.35,0,0])
        difference() {
            cylinder(d=6.7,h=2,$fn=128);
            translate([-7,0,-0.1])
            cube([15,8,3]);
        }
    }
}