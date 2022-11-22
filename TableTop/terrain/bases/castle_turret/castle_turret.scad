use <../../../../scad_modules/general_use_modules.scad>
use <../../../../scad_modules/table_top_base_modules.scad>
use <../../../../scad_modules/arc_module.scad>
use <../tiled/tiled_floor_base.scad>

partialTurret();
translate([30,0,0])
difference() {
castleTurret();
translate([0,0,-0.1])
cylinder(d=13.5, h=35.5);
}



module partialTurret() {
    translate([0,0,-17.8])
    difference() {
        castleTurret(short=true);
        translate([0,0,-0.1])
        cylinder(d=25, h=18);
    }
}

module castleTurret(short=false) {
    difference() {
        union() {
            translate([0,0,1])
            for (zeta=[0:2.5:36]) {
                translate([0,0,zeta])
                if (floor(zeta) != zeta) {
                    brickLayer();
                } else {
                    if (zeta == 35) {
                        rotate([0,0,15])
                        scale([1,1,1.5])
                        brickLayer();
                    } else {
                        rotate([0,0,15])
                        brickLayer();
                    }
                }
            }
            
            if (short) {
            } else {
                difference() {
                    cylinder(d=21.7, h=36);
                    translate([-12,0,-0.1])
                    cube([24,13,40]);
                }
            }
        }
        
        // rear cut off
        if (!short) {
            translate([-10,7,-0.1])
            cube([20,5,40]);
            translate([-12,0,-0.1])
            cube([5,10,40]);
            translate([7,0,-0.1])
            cube([5,10,40]);
        }
        
        // Attachment tube
        if (!short) {
            translate([0,-7.5,20])
            rotate([60,0,0])
            #cylinder(d=2.8, h=5, $fn=128);
        }

        if (short) {
           translate([9.5,9.5,25])
           rotate([0,12,0])
           union(){
                sphere(d=8, $fn=7);
                sphere(d=8, $fn=9);
                sphere(d=8, $fn=8);
            }
        } 
        
        if (!short) {
           translate([6,-11,38])
           rotate([0,12,0])
           union(){
                sphere(d=8, $fn=7);
                sphere(d=8, $fn=9);
                sphere(d=8, $fn=8);
           }
        }
        
        translate([-9.5,-9.5,27])
        rotate([5,15,0])
        union(){
            sphere(d=8, $fn=7);
            sphere(d=8, $fn=9);
            sphere(d=8, $fn=8);
        }
             
        if (short) {
            translate([3,10,10])
            rotate([5,15,0])
            union(){
                sphere(d=8, $fn=7);
                sphere(d=8, $fn=9);
                sphere(d=8, $fn=8);
            }
        }
        
        translate([4,-12,10])
        rotate([5,15,0])
        union(){
            sphere(d=8, $fn=7);
            sphere(d=8, $fn=9);
            sphere(d=8, $fn=8);
        }
        
        if (short) {
            translate([-13.5,2,23])
            rotate([5,-10,0])
            union(){
                sphere(d=8, $fn=7);
                sphere(d=8, $fn=9);
                sphere(d=8, $fn=8);
            }
        }
    }
    
    if (short) {
      cylinder(d=20,h=36);
    } else {
      cylinder(d=14,h=36);
    }
}

module brickLayer() {
    difference() {
        hollowCylinder(d=22, h=2, wallWidth=1);
        for (angle=[0:30:270]) {
            rotate([0,0,angle])
            cube([23,0.5,3], center=true);
        }   
    }
}