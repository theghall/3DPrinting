module tiled_floor_base(d){

    difference() { 
        linear_extrude(3)
        circle(d=d, $fn=128);

        translate([-2.5,2.5,3])
        union() {
            floorLines();
            rotate([0,0,90])
            floorLines();
        }
    }
}

module floorLines() {
    union() {
    translate([0,5,0])
    cube([55,1,1], center=true);
    translate([0,-5,0])
    cube([55,1,1], center=true);
    translate([0,-15,0])
    cube([55,1,1], center=true);
    translate([0,15,0])
    cube([55,1,1], center=true);
    }
}
