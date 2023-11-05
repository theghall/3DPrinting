
radius_vector = [1.05, 1.1, 1.15, 1.2];

translate([0,1,2])
for (i=[0:5:20]) {
    translate([0,i,0])
    pin(radius_vector[(i == 0 ? 0 : (i/5) - 1)]);
}

translate([-2,0,0])
cube([3,23,2]);
translate([18,0,0])
cube([3,23,2]);

module pin(r) {
    rotate([0,90,0])
    rotate([0,0,67.5])
    cylinder(h=20, r=r, $fn=8);
}