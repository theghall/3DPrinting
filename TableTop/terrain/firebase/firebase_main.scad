
difference() {
    translate([-100,0,0])
    union() {
        rotate([90,0,0])
        difference () {
            sidePanel(130);

            translate ([-0.5,15,10])
            cube([70,40,110]);

        }   

        translate([0,-130,15])
        rotate([-90,0,90])
        color([1,0,0])
        prism(130,15,60);
    }

    // Begin left Side Panel
    translate([-90,-128,4])
    rotate([90,0,0])
    sidePanel(3,[0.8,0.8,0.8]);

    translate([-55,-127.6,30])
    rotate([0,90,90])
    color([0,1,1])
    arcTriangle();
    // End left Side Panel
    
    // Begin right side panel
    translate([-90,0.5,4])
    rotate([90,0,0])
    sidePanel(3,[0.8,0.8,0.8]);

    translate([-55,-2.3,30])
    rotate([0,90,90])
    color([0,1,1])
    arcTriangle();
    // End right side panel

    // Begin front panel
    translate([-3,-120,5])
    rotate([0,-122,0])
    cube([35,110,2]);
    
    translate([-20,-90,28])
    rotate([0,122,180])
    color([0,1,1])
    arcTriangle();
    
    translate([-20,-35,28])
    rotate([0,122,180])
    color([0,1,1])
    arcTriangle();
    // End front panel
    
    // Begin inside panels
    translate([-80,-9.6,27])
    rotate([90,0,0])
    color([0,1,1])
    arcOval();
    
    translate([-80,-120.4,27])
    rotate([90,0,0])
    color([0,1,1])
    arcOval();
    
    translate([-30.1,-50,27])
    rotate([90,0,90])
    color([0,1,1])
    arcOval();
    
    translate([-30.1,-102,27])
    rotate([90,0,90])
    color([0,1,1])
    arcOval();
    // End inside panels
}   


// Front pins
translate([-30,-5,40])
color([1,0,0])
cylinder(h=6,r=2, center=true, $fn=8);

translate([-30,-125,40])
color([1,0,0])
cylinder(h=6,r=2, center=true, $fn=8);

// rear pins
translate([-95,-5,40])
color([1,0,0])
cylinder(h=6,r=2, center=true, $fn=8);

translate([-95,-125,40])
color([1,0,0])
cylinder(h=6,r=2, center=true, $fn=8);



module sidePanel(h,s=[1,1,1]) {
    scale(s)
    linear_extrude(height=h){
            polygon(points = [[0,0],[100,0],[75,40],[0,40]]);
    }
}

module arcTriangle() {
    union() {
        translate([0,5,0])
        rotate([0,0,35])
        arcOval();
        rotate([180,0,-35])
        arcOval();
        translate([20,-10,0.05])
        rotate([0,0,90])
        arcOval();
    }
}

module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
}

module arcOval() {
   hull() {
    rotate([0,180,0])
    cylinder(h=1,r=1, center=true);
    translate([25,0,0])
    cylinder(h=1,r=1, center=true);
    }
}

