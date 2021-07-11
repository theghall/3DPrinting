use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>
use <razorbat_base_pillars.scad>

difference() {
    union() {
    ground_terrain();
    translate([20,95,0])
    rotate([0,0,340])
    razorbat_pillar1();
    translate([60,101,0])
    rotate([0,0,15])
    razorbat_pillar2();
    }
    translate([30,40,17])
    rotate([0,-20,95])
    cutout();
    translate([40,40,44.5])
    base_border();
}

// For positioning cutout for razorbat support
//translate([30,40,16])
//rotate([-20,0,185])
//razorbat_mock();

module ground_terrain() {
    for (i=[0:15]) {
        rand_vects = rands(3,6,16,i+1);
        translate([5*i,0,0])
        for (i=[0:15]) {
            translate([0,5*i,0])
            cube([5,5,rand_vects[i]+i*2]);
        }
    }
}

module base_border() {
    hollowCylinder(d=87,h=115,wallWidth=5);
}

module razorbat_mock() {
    union() {
        translate([0,0,18])
        cube([5,5,35], center=true);
        translate([0,0,50])
        cube([30,30,30], center=true);
        translate([-30,0,50])
        cube([30,60,30], center=true);
    }
}

module cutout() {
    linear_extrude(height=5)
    scale([.65,1,1])
    circle(d=40);
}