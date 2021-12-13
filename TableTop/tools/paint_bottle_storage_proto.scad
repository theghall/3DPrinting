difference() {
    rotate([90,0,0])
    linear_extrude(height=200)
    polygon(points=[[0,0],[150,0],[150,50],[30,50]]);

    translate([45,-10,110])
    rotate([0,125,0])
    rotate([90,0,0])
    linear_extrude(height=180)
    polygon(points=[[0,0],[125,0],[0,125]]);
    translate([28,-41,5])
    bottle_level();
    translate([68,-41,13])
    bottle_level();
    translate([108,-41,20])
    bottle_level();
}


translate([0,0,-5])
rotate([0,0,270])
cube([200,150,3]);



module bottle_level() {
    union() {
        cylinder(h=20,d=35);
        translate([0,-39,0])
        cylinder(h=20,d=35);
        translate([0,-78,0])
        cylinder(h=20,d=35);
        translate([0,-117,0])
        cylinder(h=20,d=35);
       
    }
}