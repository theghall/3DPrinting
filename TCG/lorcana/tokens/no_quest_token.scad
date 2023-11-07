
difference() {
    color("blue")
    difference() {
        cylinder(d=12,h=3,$fn=10);
        translate([0,0,2])
        cylinder(d=11,h=1.5,$fn=96);
    }
    translate([-4,-2.8,1.5])
    color("gold")
    linear_extrude(1)
    text("Q", size=7.5);
}

rotate([0,0,50])
translate([0,0,2.5])
color("blue")
cube([1,11,1], center=true);