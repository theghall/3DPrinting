use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>

difference() {
    groundTerrain();
    translate([40,40,0])
    baseBorder();
}

module groundTerrain() {
    for (i=[0:15]) {
        rand_vects = rands(3,6,16,i+1);
        translate([5*i,0,0])
        union() {
            for (i=[0:9]) {
                translate([0,5*i,0])
                cube([5,5,rand_vects[i]+i*2]);
            }
             for (i=[10:15]){
                translate([0,5*i,0])
                cube([5,5,((23-i)*2) - rand_vects[i]]);
            }
        }
    }
}

module baseBorder() {
    hollowCylinder(d=81,h=50,wallWidth=5);
}