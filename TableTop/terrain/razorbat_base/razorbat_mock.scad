rotate([-15,0,0])
union() {
scale([1,0.6,1])
linear_extrude(3)
circle(d=35);
translate([0,0,18])
cube([5,5,35], center=true);
translate([0,0,50])
cube([30,30,30], center=true);
translate([-30,0,50])
cube([30,60,30], center=true);

}
translate([0,0,76])
cube([5,10,5]);