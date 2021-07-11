translate([7,10,0])
union() {
    translate([0,0,6])
    support();
    translate([120,0,6])
    support();
    translate([120,65,6])
    support();
    translate([0,65,6])
    support();
}

module support() {
 difference(){
     
       // Main support
       cube([8,8,24],center=true);
     
       // Top Hole
       translate([0,0,10.6])
       cylinder(h=4.2,r=1.25, center=true, $fn=8);
  
        // Inset
       translate([0,3.8,0])
       cube([4,0.5,12], center=true);
       translate([0,3.4,-4])
       color([1,0,1])
       roofSupportArcOval();
        
        // Inset
        translate([-3.8,0,0])
        rotate([0,0,90])
        cube([4,0.5,12], center=true);
        translate([-3.4,0,-4])
        rotate([0,0,90])
        color([1,0,1])
        roofSupportArcOval();
        
        // Inset
        translate([0,-3.8,0])
        cube([4,0.5,12], center=true);
        translate([0,-3.4,-4])
        color([1,0,1])
        roofSupportArcOval();
        
        // Inset
        translate([3.8,0,0])
        rotate([0,0,-90])
        cube([4,0.5,12], center=true);
        translate([3.4,0,-4])
        rotate([0,0,-90])
        color([1,0,1])
        roofSupportArcOval();
        
        // Bottom Hole
        translate([0,0,-10.5])
        cylinder(h=3.5,r=2.5, center=true, $fn=8);
 
        
   }
}


module roofSupportArcOval() {
   rotate([90,-90,0])
   hull() {
    rotate([0,180,0])
    cylinder(h=.5,r=.7, center=true);
    translate([8,0,0])
    cylinder(h=.5,r=.7, center=true);
    }
}
 