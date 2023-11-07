
difference() {
    sphere(d=10, $fn=256);
    translate([0,0,4])
    rotate([90,90,0])
    cylinder(d=5, h=10, $fn=256, center=true);
    hexagon([90,0,0]);
    rotate([0,90,0])
    hexagon([0,0,90]);
    translate([0,0,-6])
    cylinder(d=2.4, h=4, $fn=96);
}




module hexagon(rotation_vector=[0,0,0]) {
    rotate(rotation_vector)
    translate([0,-0.7,4])
    cylinder(d=3,h=2,$fn=256,center=true);
    
    rotate(rotation_vector)
    translate([0,-0.7,-4])
    cylinder(d=3,h=2,$fn=256,center=true);
}


    