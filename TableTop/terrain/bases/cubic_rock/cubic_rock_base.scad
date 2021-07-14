use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>
use </Users/dollarg/Documents/3DPrinting/scad_modules/table_top_base_modules.scad>

cubic_rock_base();

module cubic_rock_base(baseSize=0) {
    difference() {
        cubic_rock_terrain();
        translate([45,45,0])
        baseEdger(baseSize,10);
    }
}

module cubic_rock_terrain() {
    for (i=[0:15]) {
        rand_vects = rands(3,6,16,i+1);
        translate([5*i,0,0])
        for (i=[0:15]) {
            translate([0,5*i,0])
            cube([5,5,rand_vects[i]]);
        }
    }
}