
module marker(txt="TBD") {
    translate([0,0,6])
    cylinder(d=17.5, h=3, $fn=8, center=true);
    difference() {
        union() {
            cylinder(d=20, h=5, $fn=128);
            translate([0,0,2.5])
            rotate([0,90,0])
            cylinder(r=1.5, h=22, $fn=128, center=true);
            translate([0,0,2.5])
            rotate([90,0,0])
            cylinder(r=1.5, h=22, $fn=128, center=true);
        }
        translate([0,0,-0.1])
        cylinder(d=18, h=4, $fn=8);
    }
    translate([-7,-2,7.5])
    linear_extrude(1)
    text(txt,size=4.5, spacing=1);
 
}
