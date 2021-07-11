 
difference() {
    // Main structure
    linear_extrude(height=130)
    polygon([[-40,-37],[40,-37],[0,50]]);
  
    arcFrontInsetCombo();
    arcLeftInsetCombo();
    arcRightInsetCombo();
       
    // Top Impression
    translate([0,30,130.5])
    rotate([180,0,0])
    cylinder(h=15, r1=60, r2=20, $fn=128);
    

    // 3 insets right impression
    translate([26.5,-10,126.5])
    rotate([0,-160.5,114])
    impressionArc();
    
    translate([23.5,-3,123.5])
    rotate([0,-159,114])
    impressionArc();
   
//    translate([20.5,4,121])
//    rotate([0,-159,114])
//    impressionArc();
//    
    // 3 insets left impression
    translate([-12,-18,126.8])
    rotate([0,-160.5,60])
    impressionArc();
 
    translate([-9,-11,124])
    rotate([0,-159.5,61])
    impressionArc();
    
    translate([0,11,123])
    cube([28,78,15],center=true);

//    translate([-6,-4,121])
//    rotate([0,-159.5,61])
//    impressionArc();
}

// Platform walkway/support
difference() {
    union() {

        translate([0,11,123])
        cube([28,78,15],center=true);
        
        // Platform
        translate([0,55,128])
        cylinder(h=5, r=20, center=true, $fn=128);
    }
    
    // Walkway impression
    translate([0,4,129.7])
    cube([2,55,2], center=true);
    
    // Platform impressions
    translate([0,55,130])
    hollowCylinder(d=35, h=1, wallWidth=1);
    
    translate([0,55,130])
    hollowCylinder(d=25, h=1, wallWidth=1);
    
    translate([0,55,131])
    cylinder(h=2, r=3, center=true, $fn=128);
    
}

// Bisect circles on platform
translate([0,55,129.5])
cube([1,35,2], center=true);

// Base
cylinder(h=10, r1=60, r2=20, $fn=128);
translate([0,-38,66])

// Lift travel beam
cube([5,5,128],center=true);

// Lift Platform
difference() {
translate([0,-53,3])
cylinder(d=34, h=6, center=true, $fn=128);
translate([0,-53,5.5])
hollowCylinder(d=33,h=2, wallWidth=1);
}


module hollowCylinder(d=5, h=10, wallWidth=1, $fn=128, center=true)
{
	difference()
	{
		cylinder(d=d, h=h, center);
		translate([0, 0, -0.1]) { cylinder(d=d-(wallWidth*2), h, center); }
	}
}

module arcFrontInsetCombo() {
    translate([0,48,30])
    difference() {
        arcFrontInsetPanel();
        for(zed = [10 : 10 : 40])
            arcFrontInsetNotch(zed);
    }
}

module arcLeftInsetCombo() {
   difference() {
        arcLeftRearInsetPanel();
        for(zed = [10 : 10 : 40])
            arcLeftInsetNotch(zed);
   }
}

module arcRightInsetCombo() {
    difference() {
        arcRightRearInsetPanel();
        for(zed = [10 : 10 : 40])
            arcRightInsetNotch(zed);
   }
}

module arcInsetPanelPolygon() {
    polygon([[-40,-37],[40,-37],[0,50]]);
}
    
module arcFrontInsetPanel()  {
    difference() {
    linear_extrude(55)
    scale([0.05,0.05,1])
    arcInsetPanelPolygon();
    translate([0,-0.5,-0.1])
    linear_extrude(56)
    scale([0.04,0.04,1])
    arcInsetPanelPolygon();
    }
}

module arcFrontInsetNotch(zed) {
    translate([0,-0.5,0])
    difference() {
        translate([0,0,zed])
        linear_extrude(5)
        scale([0.05,0.05,1])
        arcInsetPanelPolygon();
        translate([0,-0.5,zed-0.5])
        linear_extrude(6)
        scale([0.05,0.05,1])
        arcInsetPanelPolygon();
    }
    
}

module arcLeftInsetNotch(zed) {
    translate([-38.5,-35.5,30])
    difference() {
        translate([0,0,zed])
        linear_extrude(5)
        scale([0.05,0.05,1])
        arcInsetPanelPolygon();
        translate([0.5,-0.7,zed-0.5])
        linear_extrude(6)
        scale([0.05,0.05,1])
        arcInsetPanelPolygon();
    }
    
}

module arcRightInsetNotch(zed) {
    translate([38,-35,30])
    difference() {
        translate([0,0,zed])
        linear_extrude(5)
        scale([0.05,0.05,1])
        arcInsetPanelPolygon();
        translate([-0.7,0.5,zed-0.5])
        linear_extrude(6)
        scale([0.05,0.05,1])
        arcInsetPanelPolygon();
    }
    
}

module arcRightRearInsetPanel()  {
  translate([38.5,-35.5,30])
  difference() {
    linear_extrude(55)
    scale([0.05,0.05,1])
    arcInsetPanelPolygon();
    translate([-0.6,0.3,-0.1])
    linear_extrude(56)
    scale([0.04,0.04,1])
    arcInsetPanelPolygon();
   }
}

module arcLeftRearInsetPanel()  {
  translate([-38.5,-35.5,30])
  difference() {
    linear_extrude(55)
    scale([0.05,0.05,1])
    arcInsetPanelPolygon();
    translate([0.6,0.2,-0.1])
    linear_extrude(56)
    scale([0.04,0.04,1])
    arcInsetPanelPolygon();
   }
}

module impressionArc() {
    linear_extrude(2)
    polygon(points = [[0,6],[0,9],[4,11],[4,4]]);
}
