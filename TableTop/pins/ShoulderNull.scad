translate([0,0,.95]) {
    rotate([0,90,0]) {
        translate([0,0,4]) {
            difference() {
                cylinder(r=2, h=2);
                translate([25,0,0]) cube(50, center=true);
             }
         }
        translate([-0.1,0,6]) {
            difference() {
                cylinder(r=3, h=4);
                translate([25,0,0]) cube(48, center=true);
             }
        }
    }
}

translate([0,0,1]){
rotate([0,90,0]) {
rotate([0,0,90]) {
cylinder(h=6,r=1.1, $fn=6);
}
}
}