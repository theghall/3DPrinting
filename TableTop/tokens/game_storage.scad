use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>
use </Users/dollarg/Documents/3DPrinting/TableTop/tokens/marker.scad>

//color("blue") tokenTray();
//translate([72,72,30])
//color("red") tokenTrayLid();

roundTracker();

module cardTray(width=68, depth=95, height=15, text="TBD", textOffset=25, arcWell=false) {
        difference() {
            cardShell(width+10, depth+10, height+3);
            translate([4,4,3])
            cardInsert(width, depth, height+0.1);
            translate([width-30, 5.1, height-2.5])
            fingerSlit();
            if (arcWell) {
                translate([15,depth+17,height+0.1])
                arcWell();
            }
        }
        translate([textOffset,100,18])
        linear_extrude(0.5)
        text(text, size=4.5, spacing=1.5);
 }


module arcWell() {
    difference() {
        cylinder(d=26, h=5, $fn=128);
        translate([0,0,3])
        cylinder(d=23, h=5, $fn=128);
    }
    translate([-6,2,3])
    linear_extrude(2)
    text("ARC", size=4.5);
    translate([-8,-4,3])
    linear_extrude(2)
    text("WELL", size=4.5);
}

module tokenTray() {
   height=32;
   bottomThickness = 3;
    
   difference() {
    // shell
    translate([0,24,0])
    cube([144,138,height]);

    // dice holder
    translate([3,60,bottomThickness])
    cube([50,70,height]);
    translate([57,60,bottomThickness])
    cube([50,70,height]);
       
 
    // ARC and DMG holder
    translate([3,28.5,bottomThickness])
    cube([137,28,height]);
    
    // Small unit token holder
    translate([112.5,60,bottomThickness+5.1])
    cube([24,98,24]);
       
    // Jack token holder   
    translate([3,133,bottomThickness])   
    cube([104,25,height]);
    
    // ????
//    translate([-1,-6,bottomThickness])
//    cube([125,30,height]);
   }
   
   translate([70,25,17])
   // Tokens
   difference() {
       union() {
       difference() {
          translate([0,-10,-1])
          scale([1.5,1,1])
          hollowCylinder(d=73,h=height, wallWidth=25);
          translate([-55,-1,-15])
          cube([125,70,31]);
       }
       translate([-37,-22,-16.9])
       cube([75,22,height]);
       }
       
       translate([-50,-8,height-30])
       smallTokenHolder(height+0.1);
       translate([-47,-22,height-30])
       smallTokenHolder(height+0.1);
       translate([-35,-32,height-30])
       largeTokenHolder(height+0.1);
       translate([-19,-38,height-30])
       largeTokenHolder(height+0.1);
       translate([-1,-40,height-30])
       largeTokenHolder(height+0.1);
       translate([17,-39,height-30])
       largeTokenHolder(height+0.1);
       translate([33,-32,height-30])
       largeTokenHolder(height+0.1);
       translate([47,-23,height-30])
       smallTokenHolder(height+0.1);
       translate([51,-9,height-30])
       smallTokenHolder(height+0.1);
      
       // Pulse Round Tracker
       translate([-37,-17,10.7])
       union() {
           for (i=[0:12:64]) {
            translate([2+i,2,0])
            cube([10,10,5]);
           }
       }
       
       for (i=[0:5]) {
         translate([-32.5+(12*i),-13,10.1])
         linear_extrude(2.1) {
         text(str(i+1), size=7);
         }
        }
        
       // Game Round Tracker
       translate([-20,-30,10.7])
       union() {
           for (i=[0:12:24]) {
            translate([2+i,2,0])
            cube([10,10,5]);
           }
       }
       
       for (i=[0:2]) {
         translate([-16+(12*i),-26,10.1])
         linear_extrude(2.1) {
         text(str(i+1), size=7);
         }
        }
   }
   
}

module largeTokenHolder(height) {
    cylinder(d=16,h=height+0.1);
}

module smallTokenHolder(height) {
    cylinder(d=13,h=height+0.1);
}

module roundTracker() {
    t="\u21BB";
    difference() {
        cylinder(d=9, h=10, $fn=8);
        translate([-4,-4,9])
        linear_extrude(2)
        text(t, size=7.3, font="Arial Unicode MS:style=Regular");
    }
}

module roundBlocker() {
   difference() {
    cylinder(d=9, h=10, $fn=8);
    translate([-4,-4,9])
    linear_extrude(2)
    text("X", size=7.3, font="Arial Unicode MS:style=Regular");
}
}

module tokenTrayLid() {
   width=147.5;
   depth=187;
   difference() {
    cube([width, depth,22], center=true);
    translate([0,0,-3])
    cube([width-3, depth-3,22], center=true);
   }
   translate([0,0,13])
   cylinder(d=50, h=3, center=true);
   translate([0,3,14.5])
   logo();
   translate([0,0,11])
   lidEdging(width=width,depth=depth,addSpheres=true);
}

module lidEdging(width,depth, addSpheres=true) {
    difference() {
        cube([width,depth, 2], center=true);
        cube([width-10,depth-10,2.1], center=true);
    }
    if (addSpheres) {
        for(x = [4 : 10 : width-5]) {
            translate([x-(width/2)+4.5,(depth/2)-2.5,0])
            lidRivet([0,0,0]);
            translate([((x-(width/2))*-1)-4.5,((depth/2)-2.5)*-1,0])
            lidRivet([0,0,0]);
        }
        for(y = [7 : 10 : depth-5]) {
            translate([(width/2)-2.5,y-(depth/2)+2.5,0])
            lidRivet([0,0,30]);
            translate([((width/2)-2.5)*-1,(y-(depth/2)+2.5)*-1,0])
            lidRivet([0,0,30]);
        }
    }    
}

module lidRivet(rotateVector) {
  rotate(rotateVector)
  cylinder(d=4, h=2,  $fn=6);
}

module logo() {
    translate([-16,-20,0])
    linear_extrude(2)
    polygon([[0,0],[30,0],[24,25],[10,20]], paths=[[0,1,2,3]]);
    translate([5,15,0])
    flag();
}


module flag() {
    translate([0,3.6,0.8])
    rotate([90,0,0])
    cylinder(d=2,h=15,$fn=128);
    translate([8.1,-1.2,0])
    difference() {
        
        difference() {
            scale([1,1,0.2]) sphere(d=20, $fn=128);
            translate([0,0,-1])
            scale([1,1,0.2]) sphere(d=19, $fn=96);
        }
           difference() {
            cube([25,30,5], center=true);
            cube([14,9,5.2], center=true);
        }
    }
    translate([7.5,5,1.1])
    rotate([0,0,-90])
    shield();
    translate([5,0,1])
    rotate([0,-5,0])
    bloodDrop();
    translate([6,-3,1])
    rotate([0,-5,0])
    bloodDrop();
    translate([10,0,1])
    rotate([0,4,0])
    bloodDrop();
    translate([9,-3,1.05])
    rotate([0,3,0])
    bloodDrop();
    translate([8,-1,-0.5])
    cylinder(d=4,h=1.5);
}


module bloodDrop() {
 difference() {
      cylinder(d=2, h=1, $fn=128);
      translate([-1.5,1.5,-0.1])
      cylinder(d=3, h=1.2, $fn=128);
      translate([1.5,1.5,-0.1])
      cylinder(d=3, h=1.2, $fn=128);
  }
}

module shield() {
    shieldPoints = [[10,0],[4,0],[3,3]];
    angle = -5;
    
    rotate([-4,0,0])
    linear_extrude(1)
    polygon(shieldPoints);
    mirror([0,1,0])
    rotate([-5,0,0])
    linear_extrude(1)
    polygon(shieldPoints);
    translate([7,0,0.5])
    cube([6,0.2,1], center=true);
}

module cardShell(width, depth, height) {
  difference() {
      cube([width,depth,height]);
      translate([width-2,24,-0.1])
      cylinder(d=6,height+1, $fn=5);
      translate([width-2,depth-24,-0.1])
      cylinder(d=6,height+1, $fn=5);
  }
  translate([-2,24,-0.1])
  rotate([0,0,216])
  cylinder(d=5.5,h=height, $fn=5);
  translate([-2,105-24,0])
  rotate([0,0,216])
  cylinder(d=5.5,h=height, $fn=5);
}

module cardInsert(width=65, depth=95, height=12) {
  cube([width, depth, height]);
}

module fingerSlit() {
    rotate([90,0,0])
    rotate([0,0,90])
    linear_extrude(5.5)
    hull() {
        translate([55,0,0])
        circle(d=20,$fn=128);
        circle(d=20, $fn=128);
    }
}

module tokenHolder(d) {
    difference() {
        cylinder(d=d+3, h=30, $fn=128);
        translate([0,0,3])
        cylinder(d=d, h=30.1, $fn=128);
        rotate([0,90,0])
        translate([-30,0, ((d/2) + 1.5) * -1])
        linear_extrude(3)
        hull() {
            circle(d=7, $fn=128);
            translate([23,0,0])
            circle(d=7, $fn=128);
        }
    }
}