
  
difference() {

    color("blue")
    difference() {
        cylinder(d=12,h=3,$fn=10);
        translate([0,0,2])
        cylinder(d=11,h=1.5,$fn=96);
    }
    
    translate([-3.5,-3.5,1.5])
    color("gold")
    union() {
        difference() {
            linear_extrude(2)
            polygon([[0,0],[2,7],[4,7],[2,0]]);
            translate([-2,4.5,-0.1])
            cylinder(d=9.5,h=3,$fn=128);
        }

        difference() {
         translate([3.5,6,0])
         cube([3,1,2]);


        translate([5.5,6,-0.1])
        rotate([0,0,-45])
        cube([1,2,3]);
       }

        difference() {
            translate([2.8,3,0])
            cube([2.5,1,2]);

            translate([4.4,3,-0.1])
            rotate([0,0,-45])
            cube([1,2,3]);
        }

        difference() {
            translate([2,0,0])
            cube([3.5,1,2]);

            translate([4.5,0,-0.1])
            rotate([0,0,-45])
            cube([1,2,3]);
        }
    }
}
