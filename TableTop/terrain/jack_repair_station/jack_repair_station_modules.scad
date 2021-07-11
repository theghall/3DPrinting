use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>

module toolChest () {
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

module platformMovementLimiter() {
    magLevCylinder(d=30,h=2);
    translate([0,0,50])
    magLevCylinder(d=30,h=2);
}

module warjackPlatform() {
    difference() {
        cylinder(d=30, h=24, $fn=128);
        translate([0,0,24.2])
        hollowCylinder(d=28, h=1, wallWidth=1);
    }
}

module controlPanel() {
    difference(0) {
        linear_extrude(3.2)
        scale([1,0.5, 1])
        circle(d=15, $fn=128);
        translate([-4,-2.5,2.8])
        cube([8,5,0.5]);
    }
}

module controlPanelSupport() {
    magLevCylinder(h=20,d=5);
}


module platform(cutoutDiameter=25,crossPiece=false) {
    union() {
        difference() {
            minkowski() {
                cube([125,70,24], center=true);
                cylinder(r=4,h=1, center=true);
            }
            translate([-60,0,0])
            cylinder(h=26, d=cutoutDiameter,center=true, $fn=128);
        }
        if (crossPiece) {
            translate([-52,-18,-13])
            cube([15,35,26]);
        }
    }
}

module magLevCylinder(h=150, d=20) {
    scale([0.75,1,1])
    cylinder(h=h, d=d, $fn=128);
}

module rails() {
    union() {
        translate([0,17,0])
        rail();
        translate([0,-22,0])
        rail();
    }
}

module rail() {
    cube([250,5,5]);
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
            cube([50.5,15,10], center=true);
            translate([0,0,4])
            cube([45.5,14,3], center=true);
        }
        translate([-12,-4,0])
        union() {
            cube([25,5,3]);
            translate([15,2.5,0])
            rotate([0,0,45])
            cube([5,3,3]);
        }
    }
}

module weaponCrateTop() {
    cube([50.5,15,2], center=true);
    translate([0,0,2])
    cube([45.5,14,3], center=true);
    
}

module platformLift() {
   union() {
    cube([35,35,5]);
    translate([-14,35,0])
    rotate([90,0,0])
    wedge(20, 14, 14.8, height = 35);
   }
}

module personalLift() {
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
  
  translate([-4,6.5,0])
  union() {
      translate([0,0,75])
      rotate([0,90,0])
      cube([150,5,5], center=true);
      translate([5,0,75])
      rotate([0,90,0])
      cube([150,35,10], center=true);
  }
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
  
