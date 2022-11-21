
rotate([0,90,0])
cylinder(d=2,h=18, $fn=128);
rotate([0,0,90])
scale([.3,1,.3])
sphere(d=7, $fn=128);
translate([18,0,0])
rotate([0,90,0])
cylinder(h=5, r1=1, r2=0, $fn=128);
translate([5,0,-2.5])
cylinder(h=2,d=1.5);
translate([15,0,-2.5])
cylinder(h=2,d=1.5);