use </Users/dollarg/Documents/3DPrinting/TableTop/tokens/marker.scad>

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
   difference() {
    cube([110,133,12]);
    for(y = [3 : 17 : 40]) {
      for(x = [3 : 18 : 40]) {
          translate([x,y,2])
          cube([15,15,12]);
      }
    }
    translate([3,60,2])
    cube([50,70,12]);
    translate([57,60,2])
    cube([50,70,12]);
    translate([57,28.5,2])
    cube([50,23.5,12]);
    translate([57,3,2])
    cube([50,23.5,12]);
   }
}

module tokenTrayLid() {
   width=136;
   depth=113;
   difference() {
    cube([width, depth,11], center=true);
    translate([0,0,-3])
    cube([width-3, depth-3,11], center=true);
   }
   translate([0,0,7])
   cylinder(d=50, h=3, center=true);
   translate([0,3,8.5])
   logo();
   translate([0,0,6])
   lidEdging(width=width,depth=depth,addSpheres=true);
}

module lidEdging(width,depth, addSpheres=true) {
    difference() {
        cube([width,depth, 1], center=true);
        cube([width-10,depth-10,1.1], center=true);
    }
    if (addSpheres) {
        for(x = [4 : 10 : width-5]) {
            translate([x-(width/2)+3,(depth/2)-2.5,0])
            lidRivet([0,0,0]);
            translate([((x-(width/2))*-1)-3,((depth/2)-2.5)*-1,0])
            lidRivet([0,0,0]);
        }
        for(y = [7 : 10 : depth-5]) {
            translate([(width/2)-2.5,y-(depth/2),0])
            lidRivet([0,0,30]);
            translate([((width/2)-2.5)*-1,(y-(depth/2))*-1,0])
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