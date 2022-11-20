
translate([0,0,6])
scale([0.8,0.8,1])
upperRockLayer();

difference() {
    scale([1,1,2.5])
    upperRockLayer();
    translate([11.5,9.3,6])
    rotate([120,0,-50])
    cylinder(d=2.8, h=6, $fn=128);
}

translate([4,4,-1.5])
rotate([0,0,45])
cube([4,4,3], center=true);



module upperRockLayer() {
    union() {
        translate([0.5,0.5,0])
        cube([10,10,3]);
        rotate([0,0,8])
        cube([10,10,3]);
        rotate([0,0,-12])
        cube([10,10,3]);
    }
}