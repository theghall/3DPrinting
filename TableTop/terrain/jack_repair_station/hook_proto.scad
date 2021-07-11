difference() {
    cube([50,30,5]);
    translate([0,15,-0.1])
    cut(30);
    mirror([0,1,0])
    translate([0,-15,-0.1])
    cut(30);
    translate([-4,0,-0.1])
    cube([10,30,6]);
    translate([53,19,-0.1])
    cut(70);
    translate([53,10,-0.1])
    mirror([0,1,0])
    cut(70);
}


module cut(deg=0) {
    rotate([0,0,deg])
    cube([30,30,6]);
}