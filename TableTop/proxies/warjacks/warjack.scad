use <../../../scad_modules/table_top_base_modules.scad>

plainBaseInsert(baseSize="40mm");
    
translate([30,0,0])
union() {
    cylinder(h=25, r1=5, r2=8);
    translate([0,0,26])
    sphere(d=10, $fn=9);
}

translate([22,0,5])
rotate([0,90,0])
legAttachmentPoint();

translate([20.5,0,20])
rotate([0,90,0])
armAttachmentPoint();

translate([-38,5,0])
arm(side="left");

translate([-38,-5,0])
arm(side="right");


translate([0,35,0])
leg(side="left");

translate([0,25,0])
leg(side="right");

module legAttachmentPoint() {
 cylinder(h=16, d=3, $fn=96);
}

module armAttachmentPoint() {
 cylinder(h=19, d=3, $fn=96);
}

module arm(side) {
 upperArmVector = (side == "left" ? [0,0,0] : [0,-6,0]);
 armAttachmentVector = (side == "left" ? [2,7.5,2] : [2,2.5,2]);
 translate(upperArmVector)
 difference() {
    cube([4,10,4]);
    translate(armAttachmentVector)
    cylinder(h=5, d=3.2, $fn=96);
 }
 cube([15,4,4]);
 translate([16,2.0])
 difference() {
    cylinder(d=8, h=4, $fn=3);
    translate([-1,-0.5,-0.1])
    cube([5,1,5]);
 }
}

module leg(side) {
 lowerLegVector = (side == "left" ? [0,0,0] : [0,-6,0]);
 legAttachmentVector = (side == "left" ? [12.5,3.2,4] : [12.5,3.2,4]);
 translate(lowerLegVector)
 cube([4,10,6]);
 
 difference() {
     cube([15,6,6]);
     translate(legAttachmentVector)
     cylinder(h=5, d=3.2, $fn=96);
 }
}