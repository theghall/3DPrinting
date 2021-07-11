rotate([0,180,0])
union() {
cylinder(h=3, r=1.05, $fn=8);
rotate([0,180,45]) cylinder(h=5, r1=3.2, r2=2, $fn=4);
}
