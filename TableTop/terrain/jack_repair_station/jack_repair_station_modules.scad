use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>

module toolChest (withPins=0) {
    pin1Vector = [8,7.5,-3];
    pin2Vector = [17,7.5,-3];
    
    difference() {
        
        union() {
            cube([25,15,30]);

            topDrawerXOffset = 25;
            numTopDrawers = 4;
            topDrawerSpacing = 4;

            translate([2.5,13.5,topDrawerXOffset])
            union() {
                for (i=[0:numTopDrawers - 1]) {
                    translate([0,0,0 - (i * topDrawerSpacing)])
                    cube([20,2,3]);
                }

              
                translate([0,0, 0 - (numTopDrawers * topDrawerSpacing) - 1 ])
                cube([20,2,4]);
                translate([0,0, 0 - (numTopDrawers * topDrawerSpacing) - 7 ])
                cube([20,2,5]);
            }
        }
        translate(pin1Vector)
        toolChestPin();
        translate(pin2Vector)
        toolChestPin();
    }
    
    if (withPins == 1) {
        translate(pin1Vector)
        toolChestPin();
        translate(pin2Vector)
        toolChestPin();
    }
    
}

module toolChestPin() {
    rotate([0,0,67.9])
    cylinder(d=3,h=6, $fn=8);
}
    
module platformMovementLimiter() {
    magLevCylinder(d=30,h=3);
    translate([0,0,50])
    magLevCylinder(d=30,h=3);
}

module warjackPlatform(height=24) {
    difference() {
        cylinder(d=54, h=height, $fn=128);
        translate([0,0,height-0.25])
        hollowCylinder(d=52, h=1, wallWidth=1);
    }
}

module controlPanel() {
    difference(0) {
        linear_extrude(3.2)
        scale([1,0.5, 1])
        circle(d=20, $fn=128);
        translate([-5.1,-3.3,2.8])
        cube([10,7,0.5]);
    }
}

module controlPanelSupport() {
    magLevCylinder(h=24,d=5);
}


module platform(height=24,cutoutDiameter=25,crossPiece=false) {
    union() {
        difference() {
            minkowski() {
                echo(height);
                cube([125,70,height], center=true);
                cylinder(r=4,h=1, center=true);
            }
            translate([-65,0,0])
            cylinder(h=height + 2, d=cutoutDiameter,center=true, $fn=128);
        }
        if (crossPiece) {
            translate([-52,-20,0 - (height / 2)])
            cube([15,cutoutDiameter,height + 0.5]);
        }
    }
}

module magLevCylinder(h=150, d=20) {
    scale([0.75,1,1])
    cylinder(h=h, d=d, $fn=128);
}

module rails(scale=[1,1,1]) {
    union() {
        translate([0,8,0])
        rail(scale);
        translate([0,-12,0])
        rail(scale);
    }
}

module rail(scale=[1,1,1]) {
    scale(scale)
    cube([130,5,5]);
}

module craneBase() {  
   difference() { 
        hull() {
            cylinder(d=60,h=75, $fn=7);
            translate([0,0,85])
            cylinder(d=50,h=1, $fn=7);
        }
        translate([0,0,85.5])
        hollowCylinder(d=32, h=4);
    }
    translate([0,0,85])
    cylinder(d=30,h=10, $fn=128);
    
    translate([22,13,0])
    rotate([0,0,25])
    craneSupport();
    translate([-19,18,0])
    rotate([0,0,125])
    craneSupport();
    rotate([0,0,-100])
    translate([27,1,0])
    craneSupport();
}

module craneSupport() {
    rotate([90,0,0])
    linear_extrude(5)
    polygon(points=[[0,0],[30,0],[0,40]]);
}

module craneTop() {
    difference() {
        sphere(d=35, $fn=128);
        translate([0,0,25])
        cube([25,25,25],center=true);
        translate([0,0,-20])
        cylinder(d=45,h=20);
    }
    
}

module craneTopExtension() {
    cylinder(h=75,d=15);
}

module craneCap() {
    hull() {
        cylinder(d=20,h=1, $fn=7);
        translate([0,0,15])
        cylinder(d=15,h=1, $fn=7);
    }
}

module boomAnchor() {
    hollowCylinder(d=25, h=10, wallWidth=5);
}

module craneHookAnchor() {
    scale([1,0.75,1])
    hollowCylinder(d=15, h=10, wallWidth=5);
}
module craneCableGuide() {
    cylinder(d=7,h=5, $fn=128);
}

module craneHookCable() {
    cylinder(d=5.5,h=13,$fn=128);
}

module craneHook() {
    difference() {
        // Outer edge cuts
        cube([50,30,5]);
        translate([0,15,-0.1])
        cut(30);
        mirror([0,1,0])
        translate([0,-15,-0.1])
        cut(30);
        translate([-4,0,-0.1])
        cube([10,30,6]);
        translate([53,19,-0.1])
        cut(70);
        translate([53,10,-0.1])
        mirror([0,1,0])
        cut(70);

        // Center cuts
        translate([55,15,-0.1])
        rotate([0,0,-195])
        wedge(30, 30, 30, height = 7);
        translate([20,9,-0.1])
        rotate([0,0,90])
        wedge(60,12,12, height = 7);
    }
}

module cut(deg=0) {
    rotate([0,0,deg])
    cube([30,30,6]);
}
module weaponCrateBottom() {
    difference() {
        difference() {
            cube([50.5,30,10], center=true);
            translate([0,0,4])
            cube([45.5,14,3], center=true);
        }
        translate([-16,-5,0])
        union() {
            cube([32,11,7]);
            translate([14,5.5,0])
            rotate([0,0,45])
            cube([7.5,9.5,7]);
        }
    }
    
    translate([-4,16.3,2.5])
    rotate([90,0,0])
    rotate([0,90,0])
    cylinder(d=6, h=8, $fn=3);
}

module weaponCrateTop() {
    cube([50.5,30,2], center=true);
    translate([0,0,2])
    cube([45.5,14,3], center=true);
    
}

module personnelLift() {
 union() {
     personnelLiftPlatform();
     translate([-4,6.5,0])
     personnelLiftGuide();
 }
}

module personnelLiftGuide() {
    union() {
      translate([0,0,75])
      rotate([0,90,0])
      cube([150,5,5], center=true);
      translate([5,0,75])
      rotate([0,90,0])
      cube([150,35,10], center=true);
  }
}

module personnelLiftPlatform() {
  minkowski() {
    cube([70,40,5], center=true);
    cylinder(r=4,h=1, center=true);
  }

  translate([-20,6.5,5])
  difference() {
    cylinder(d=34, h=6, center=true, $fn=128);
    translate([0,0,3.5])
    hollowCylinder(d=33,h=2, wallWidth=1);
  }
  
    translate([-53.5,20,-2.9])
    rotate([90,0,0])
    wedge(22, 14.8, 16, height = 30);
}

module smallCraneBase() {
  union() {
    hull() {
        cylinder(d=20,h=30, $fn=7);
        translate([0,0,35])
        cylinder(d=15,h=1, $fn=7);
    }
    cylinder(h=50, d=10);
  }
  translate([0,0,42])
  scale([0.6,0.6,0.6])
  boomAnchor();
  translate([0,0,42])
  rotate([0,-90,90])
  magLevCylinder(h=25,d=7);
  translate([0,-20,42])
  rotate([90,-90,0])
  scale([0.75,1,1])
  hollowCylinder(d=9, h=5, wallWidth=1);
  
}
  
