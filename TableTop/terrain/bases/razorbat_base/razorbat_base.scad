use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>

module place_pillar1() {
    translate([20,95,0])
    rotate([0,0,340])
    razorbat_pillar1();
}

module place_pillar2() {
    translate([60,101,0])
    rotate([0,0,15])
    razorbat_pillar2();
}

module place_cutout() {
    translate([30,40,16])
    rotate([0,-20,95])
    cutout();
}

module place_base_border() {
    translate([40,40,44.5])
    base_border();
}

module place_mock_razorbat() {
    translate([30,40,16])
    rotate([-20,0,185])
    razorbat_mock();
}

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

module razorbat_pillar1(h=100) {
    seed4 = 2;
    seed5 = 5;
    seed6 = 80;
    size_vects2 = rands(3,10,20,seed4);
    translate_x_vects2 = rands(3,12,20,seed5);
    translate_y_vects2 = rands(3,10,20,seed6);

    translate([-5,-35,0])
    linear_extrude(h)
    for (i=[0:19]){
        translate([translate_x_vects2[i],translate_y_vects2[i],0])
        square(size_vects2[i]);
    }
}

module razorbat_pillar2(h=100) {
    seed7 = 2;
    seed8 = 5;
    seed9 = 1;
    size_vects3 = rands(3,10,20,seed7);
    translate_x_vects3 = rands(3,12,20,seed8);
    translate_y_vects3 = rands(3,10,20,seed9);

    translate([-35,-15,0])
    rotate([0,0,-65])
    linear_extrude(h)
    for (i=[0:19]){
        translate([translate_x_vects3[i],translate_y_vects3[i],0])
        square(size_vects3[i]);
    }
}

module base_border() {
    hollowCylinder(d=81,h=115,wallWidth=5);
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
    scale([0.3,1,1])
    linear_extrude(5.6)
    circle(d=40, center=true);
    translate([0,3,0])
    scale([1,0.3,1])
    linear_extrude(5.6)
    circle(d=30, center=true);
}