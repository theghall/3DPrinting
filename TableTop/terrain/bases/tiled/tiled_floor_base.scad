module tiled_floor_base(d){

    difference() { 
        linear_extrude(3)
        circle(d=d, $fn=128);

        //translate([-2.5,2.5,3])
                translate([0,0,3])

        union() {
            floorLines();
            rotate([0,0,90])
            floorLines();
        }
    }
}


module floorLines() {
    translate([0,-45,0])
    cube([100,1,1], center=true);
    translate([0,-35,0])
    cube([100,1,1], center=true);
    translate([0,-25,0])
    cube([100,1,1], center=true);
    translate([0,-15,0])
    cube([100,1,1], center=true);
    translate([0,-5,0])
    cube([100,1,1], center=true);
    translate([0,5,0])
    cube([100,1,1], center=true);
    translate([0,15,0])
    cube([100,1,1], center=true);
    translate([0,25,0])
    cube([100,1,1], center=true);
    translate([0,35,0])
    cube([100,1,1], center=true);
    translate([0,45,0])
    cube([100,1,1], center=true);
}
