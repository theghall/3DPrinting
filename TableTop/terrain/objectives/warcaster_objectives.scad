use <../../../scad_modules/general_use_modules.scad>

nodeObjective();

module nodeObjective(number="1") {
    difference() {
        union() {
            rotate([0,0,20])
            sphere(d=20,$fn=8);
       
        }
        translate([-2,-2,9])
        linear_extrude(2)
        text(number,size=5);
        translate([0,0,0])
        hollowCylinder(d=20, h=3, wallWidth=1.5, $fn=128, center=true);
    }
}