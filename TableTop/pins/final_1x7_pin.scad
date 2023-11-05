
translate([0,1,2])
for (i=[0:5:20]) {
    translate([0,i,0])
    pin();
}

translate([-2,0,0])
cube([3,23,2]);
translate([18,0,0])
cube([3,23,2]);

module pin() {
    rotate([0,90,0])
    rotate([0,0,67.5])
    cylinder(h=20, r=0.91, $fn=8);
}

