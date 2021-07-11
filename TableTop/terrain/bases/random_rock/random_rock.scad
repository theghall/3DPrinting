use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>

translate([5,3.7,0])
cylinder(d=23, h=3, $fn=128);

difference() {
    translate([0,0,1])
    union() {
        for (y=[-2:2]) {
            for (x=[0:2]) {
                translate([0,0,0])
                randomRockSlab(3+x+y);
                translate([8*x,-5*y,0])
                randomRockSlab(10+x+y);
                translate([-8*x,-5*y,0])
                randomRockSlab(12+x+y);
            }
        }
    }   
    translate([5,3.7,0])
    hollowCylinder(d=65, h=15, wallWidth=21);
}


module randomRockSlab(seed) {
    hull() {
        for(i=[1:5]) {
            rand_vects = rands(1,7,7,seed*i);
            if (i > 1) translate([0,i,0])
            for(j=[0:6]) {
                //h = sin(i*10)+2+(rand_vects[j]/10);
                h = 2 + (rand_vects[j]/10);
                translate([j+1,0,0])
               cube([1,1,h]);
            }
        }
    }
}
