use <../../../../scad_modules/arc_module.scad>

//difference() {
//translate([0,0,4])
//cylinder(h=21, r1=15, r2=0, $fn=128);
//translate([0,0,4.5])
//cylinder(h=2,r=20, $fn=128);
//cylinder(h=5, r=12, $fn=128);
//translate([-15,0,0])
//cube([30,1,20]);
//}
difference() {
linear_extrude(4)
arc(14, [180,360], 1, 128);
translate([0,0,-0.1])
linear_extrude(4.2)
arc(12, [0,360], 1, 128);
translate([0,0,-0.1])
cylinder(h=8.3, r1=14.5, r2=0, $fn=128);
translate([14,0.1,2.5])
rotate([90,0,0])
cylinder(h=3, d=1.2, $fn=128);
translate([-14,0.1,2.5])
rotate([90,0,0])
cylinder(h=3, d=1.2, $fn=128);
translate([0,-13.5,1.2])
#cube([4.5,2.1,2.5], center=true);
}


