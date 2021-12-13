    difference() {
        cylinder(d=25, h=3, $fn=128);
        translate([0,0,10.5])
        cube([4,4,18], center=true);
    }
  
translate([0,20,0])
rotate([0,90,0])
difference() {
    cube([4,4,18], center=true);
    translate([0,0,6])
    cylinder(d=2.1, h=3.1, $fn=128);
}

translate([0,30,0])
rotate([0,90,0])
difference() {
    cube([4,4,18], center=true);
    translate([0,0,6])
    cylinder(d=2.2, h=3.1, $fn=128);
}
