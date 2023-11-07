    
    use <../general_use_modules.scad>
    
    difference() {
        union() {
                translate([0,-9,0])
                castleTurret(diameter=8);

                translate([0,-9,10.2])
                union() {
                    rotate([0,0,rotateDegrees(1, 15)])
                    towerBrickLayer(diameter=9);
                    hollowCylinder(8.01, h=1.5, wallWidth=0.5);
                }


                translate([0,9,0])
                castleTurret(diameter=8);

                translate([0,9,10.2])
                union() {
                    rotate([0,0,rotateDegrees(1, 15)])
                    towerBrickLayer(diameter=9);
                    hollowCylinder(8.5, h=1.5, wallWidth=0.5);
                }

                translate([0,0,-1])
                union() {
                    for (row=[0:1:4]) {
                        
                        if (row % 2 ==  0) {
                            translate([0,-9,(row * 2.1)])
                            wallBrickLayer(numberOfBricks=5);
                        } else {
                            translate([0,-10,(row * 2.1)])
                            wallBrickLayer(numberOfBricks=5);
                        }
                    }
                    translate([-0.3,-6,0])
                    cube([0.5, 15, 2 * 5]); 
                }
         }
        
        translate([-20.2,-15,-2])
        cube([20,30,20]);
    }
    translate([-2.1,-15,-1])
    cube([2,30,12.5]);
    
function zetaValue(level, delta) = level == 0 ? 0 : delta;
function rotateDegrees(level, degrees) = level % 2 == 0 ? 0 : degrees;
    
module castleTurret(diameter) {    
    numberOfLevels = 5;
    spacing = 2.1;

    union() {
        for (level=[0:1:numberOfLevels - 1]) {
           translate([0,0,level * zetaValue(level, spacing)])
           rotate([0,0,rotateDegrees(level, 15)])
           towerBrickLayer(diameter);
        }
        translate([0,0,-1.05])
        cylinder(d=diameter - 2, h=(numberOfLevels * spacing), $fn=96);
    }
}

module towerBrickLayer(diameter, innerCylinder=false) {
    color("gray")
    difference() {
        hollowCylinder(diameter, h=2, wallWidth=1, center=true);
        for (angle=[0:45:270]) {
            rotate([0,0,angle])
            cube([diameter + 1, 0.2, 2], center=true);
        }   
    }
    
    if (innerCylinder) {
        cylinder(d=diameter, h=2, center=true);
    }
}


module wallBrickLayer(numberOfBricks) {
    color("gray")
    for(brick=[1:1:numberOfBricks]) {
        if (brick == 1) {
            cube([2,4,2]);
        }
        else {
           translate([0,4.3 * (brick - 1),0])
           cube([2,4,2]);
        }
    }
}
