
damageModifier("-1");
translate([-20,0,0])
damageModifier("-2");
translate([-40,0,0])
damageModifier("-3");
translate([20,0,0])
damageModifier("+1", plus=true);
translate([40,0,0])
damageModifier("+2", plus=true);
translate([60,0,0])
damageModifier("+3", plus=true);




module damageModifier(text, plus=false) {
    difference() {
        rotate([0,0,90])
        color("blue")
        union() {
            translate([0,0,0])
            rotate([0,0,45])
            pointyEdges();
            translate([-10.5,-0.1,0])
            rotate([0,0,135])
            pointyEdges();

            translate([1.5,-5.1,0])
            roundEdges(d=5,h=3);
            
            translate([-5,-5,0])
            cylinder(d=15,h=3);
        }
        
        color("gold")
        if (plus) {
            translate([-1.5,-9.5,2.5])
            linear_extrude(1)
            text(text, size=8);
        } else {
            translate([-0.5,-9.5,2.5])
            linear_extrude(1)
            text(text, size=8);
        }
    }
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