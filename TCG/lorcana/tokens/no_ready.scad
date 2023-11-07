difference() {
    color("blue")
    difference() {
        cylinder(d=12,h=3,$fn=10);
        translate([0,0,2])
        cylinder(d=11,h=1.5,$fn=96);
    }
    
    color("gold")
    union() {
        translate([0,3.5,1.5])
        rotate([0,0,-30])
        cylinder(d=4,h=1, $fn=3);
        translate([-1,-4,1.5])
        cube([1.8,6.6,1]);
    }
}

rotate([0,0,50])
translate([0,0,2.5])
color("blue")
cube([1,11,1], center=true);