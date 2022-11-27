use <../../../../scad_modules/arc_module.scad>

difference() {
linear_extrude(10)
color("orange")
circle(d=40);
color("blue")
translate([-7,0,6.0])
#cylinder(d=8.3, h=8.1, center=true, $fn=128);
}

translate([0,0,9])
difference() {
    for(i=[50:-1:40]){
        translate([15+(51-i),0,51-i])
        color("red")
        if (i == 50) {
            hillLayer(diameter=i);

        } else {
            rotate([0,0,-1*(51-i)])
            hillLayer(diameter=i);
        }
    }

    difference() {
        color("blue")
        translate([0,0,0])
        linear_extrude(20)
        arc(40, [-90,90], 1, 128);
        color("yellow")
        translate([0,0,-0.2])
        linear_extrude(21)
        arc(19, [0,360], 1, 128);
    }
}

translate([0,0,9])
difference() {
translate([0,0,1])
linear_extrude(2)
arc(19, [63,298], 1, 128);
translate([0,0,1])
linear_extrude(2.1)
arc(18, [0,360], 1, 128);
}

translate([0,30,0])
cylinder(d=7.8,h=8, $fn=128);

//translate([-5,0,30])
//outriderMock();

module outriderMock() {
    scale([.3,1,.6])
    sphere(d=60);
}

module hillLayer(diameter,height=1) {
   scale([0.4,1,1])
   cylinder(d=diameter,h=1);
}