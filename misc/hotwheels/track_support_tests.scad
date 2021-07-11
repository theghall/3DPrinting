
cube([6,5.5,10]);
translate([10,0,0])
cube([6,6.7,15]);
translate([20,0,0])
cube([6,6,20]);
translate([30,0,0])
cube([6,6.2,25]);
translate([40,0,0])
cube([6,6.5,30]);



translate([0,20,0])
top();
translate([20,20,0])
top();

module top() {
union() {
    cube([10,10,5]);
    translate([1,4,5])
    union() {
        union() {
            cube([2,2,5]);
            translate([-0.5,2,4.2])
            rotate([90,60,0])
            cylinder(h=2,d=2,$fn=3);
        }
        translate([6.1,0,0])
        union() {
            cube([2,2,5]);
            translate([2.5,02,4.2])
            rotate([90,0,0])
            cylinder(h=2,d=2,$fn=3);
        }
    }
}
}
