

willpower("-1");
translate([15,0,0])
willpower("-2");
translate([30,0,0])
willpower("-3");


module willpower(text) {
    difference() {
        color("blue")
        difference() {
            linear_extrude(3)
            polygon([[0,0],[0,8],[2,9],[3,8],[5,8],[7,8],[8,9],[10,8],[10,0],[5,-1.5]]);
            translate([-3,4,-0.1])
            cylinder(d=8,h=4, $fn=96);
            translate([13,4,-0.1])
            cylinder(d=8,h=4, $fn=96);
        }
        translate([1.5,1,2.5])
        color("gold")
        linear_extrude(1)
        text(text, size=6);
    }
}