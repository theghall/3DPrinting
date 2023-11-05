use <../../../scad_modules/general_use_modules.scad>

rotate([90,0,0])
translate([0,0,3.5])
scale([.5,.5,1])
union() {
    difference() {
        hollowCylinder(d=15, wallWidth=2);

        translate([0,0,3])
        union() {
            wedge();
            rotate([0,0,90])
            wedge();
        }
    }
    translate([0,0,-5])
    difference() {
        cylinder(d=13.1, h=1, $fn=96);
        translate([0,0,5])
        scale([2,2,1])
        sphere(d=7.5, $fn=96);
    }
    
    translate([0,0,-7.5])
    cylinder(d=9.5, h=3, $fn=128);
}


rotate([90,0,0])
difference() {
union() {
scale([.5,.5,1])
    union() {


        difference() {
            translate([0,0,6])
            union() {
                difference() {
                    translate([0,0,-10])
                    scale([.3,.3,1])
                    sphere(d=50, $fn=128);
                    translate([0,0,10])
                    cylinder(d=20,h=35, $fn=128, center=true);
                }
            }
            
        }
    }
    
    rotate([90,0,0])
    union() {
        translate([0,-6.5,0])
        bumpSphere(d=10, scaleVector=[.3,.3,1]);
        translate([0,-10.5,0])
        bumpSphere(d=9.5, scaleVector=[.3,.3,1]);
        translate([0,-14.5,0])
        bumpSphere(d=9, scaleVector=[.3,.3,1]);
    }
    
    rotate([0,90,0])
    union() {
        translate([6.5,0,0])
        bumpSphere(d=10, scaleVector=[.3,.3,1]);
        translate([10.5,0,0])
        bumpSphere(d=9.5, scaleVector=[.3,.3,1]);
        translate([14.5,0,0])
        bumpSphere(d=9, scaleVector=[.3,.3,1]);
    }
    
    }
    translate([0,0,-5.3])
    scale([.5,.5,1])
    #cylinder(d=10, h=4, $fn=128);
}

translate([0,6,-5])
cylinder(h=2, d=3, $fn=96);
translate([0,17,-5])
cylinder(h=2, d=3, $fn=96);

module wedge() {
    rotate([0,90,0])
    scale([1,.5,1])
    cylinder(d=10, h=20, $fn=3, center=true);
}

module bumpSphere(d, scaleVector) {
    scale(scaleVector)
    sphere(d=d, $fn=96);
}