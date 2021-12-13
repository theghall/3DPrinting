tokenHeight=2.5;
largeTokenDiameter=15;
smallTokenDiameter=12;

difference() {
    union() {
        cylinder(d=30, h=10, $fn=128);
        translate([-5,0,5])
        cube([7,40,10], center=true);
    }

    translate([-12.5,0,12])
    rotate([0,70,0])
    cylinder(d=largeTokenDiameter, h=tokenHeight, $fn=128);

    translate([-8,11,12])
    rotate([0,70,0])
    cylinder(d=largeTokenDiameter, h=tokenHeight, $fn=128);

    translate([-8,-12,12])
    rotate([0,70,0])
    cylinder(d=largeTokenDiameter, h=tokenHeight, $fn=128);

    translate([0.5,-8,12])
    rotate([0,70,0])
    cylinder(d=smallTokenDiameter, h=tokenHeight, $fn=128);

    translate([0.5,8,11])
    rotate([0,70,0])
    cylinder(d=smallTokenDiameter, h=tokenHeight, $fn=128);
    
    
    translate([12,0,8.6])
    cube([9,30,3.1], center=true);

    translate([10,0,8])
    rotate([0,70,0])
    cylinder(d=smallTokenDiameter, h=tokenHeight, $fn=128);
}

difference() {
    translate([0,40,0])
    cylinder(d=28, h=8, $fn=128);

    translate([-3,33,9])
    rotate([0,70,0])
    cylinder(d=smallTokenDiameter, h=tokenHeight, $fn=128);

    translate([-3,47,9])
    rotate([0,70,0])
    cylinder(d=smallTokenDiameter, h=tokenHeight, $fn=128);

    translate([8,40,9])
    rotate([0,70,0])
    cylinder(d=smallTokenDiameter, h=tokenHeight, $fn=128);
}