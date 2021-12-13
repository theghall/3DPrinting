difference() {
cube([125,25,5]);
for(i=[15:15:115]) {
    translate([i,12,8])
    cube([4.1,4.1,12], center=true);
}
}

translate([0,50,0])
rotate([0,90,0])
difference() {
    cube([4,4,18], center=true);
    translate([0,0,6])
    cylinder(d=2.1, h=3.1, $fn=128);
}