use </Users/dollarg/Documents/3DPrinting/scad_modules/general_use_modules.scad>

baseEdgeDiameters = [27, 37, 47, 79];

difference() {
    cylinder(h=5, d=28);
    baseEdger();
}

translate([50,0,0])
difference() {
    cylinder(h=5, d=38);
    baseEdger(1);
}

translate([110,0,0])
difference() {
    cylinder(h=5, d=48);
    baseEdger(2);
}

translate([190,0,0])
difference() {
    cylinder(h=5, d=80);
    baseEdger(3);
}


module baseEdger(size=0, height=7) {
  // hollowCylinder is centered
  xTranslate  = ceil(height/2) - 1;
  translate([0,0,xTranslate])
  hollowCylinder(d=baseEdgeDiameters[size], h=height, wallWidth=1);
}