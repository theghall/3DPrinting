
difference() {
    union() {
        rotate([0,0,45])
        pointyEdges();
        translate([-10,0,0])
        rotate([0,0,135])
        pointyEdges();

        translate([1.5,-5.1,0])
        roundEdges(d=5,h=3);
        
        translate([-5,-5,0])
        cylinder(d=15,h=3);
    }
    translate([-12,-9,2.5])
    linear_extrude(1)
    text("-1");
}

module roundEdges(d,h) {
    hull() {
        cylinder(d=d, h=h, $fn=96);
        translate([-13,0,0])
        cylinder(d=d, h=h, $fn=96);
    }
}

module pointyEdges() {
    hull() {
        eqi_triangle();
        translate([-15,0,0])
        rotate([0,0,180])
        eqi_triangle();
    }
}

module eqi_triangle(d=5,h=3) {
  cylinder(d=d,h=h,$fn=3);
}