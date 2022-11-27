use <../../../../scad_modules/general_use_modules.scad>
use <../../../../scad_modules/table_top_base_modules.scad>
use <../../../../scad_modules/arc_module.scad>

difference() {
        // Front Curve
        translate([0,0,6])
        hollowCylinder(d=23, h=6, wallWidth=1.5);
        
        //Removes backside of above cylinser
        translate([0,0,3.1])
        linear_extrude(17)
        arc(23/2, [230,360], 1, 24);
}
cylinder(d=23, h=3);