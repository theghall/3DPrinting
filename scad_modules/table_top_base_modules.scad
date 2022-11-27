use <general_use_modules.scad>

baseEdgeDiameters = [23, 37, 47, 79, 20];

translate([-70,0,0])
difference() {
    cylinder(h=5, d=20);
    baseEdger(4);
}

translate([-40,0,0])
difference() {
    cylinder(h=5, d=24);
    baseEdger(4,7,true);
}
translate([-40,0,2.5])
hollowCylinder(d=20, h=5, wallWidth=1);
    

//difference() {
//    cylinder(h=5, d=28);
//    baseEdger(0);
//}
//
//translate([50,0,0])
//difference() {
//    cylinder(h=5, d=38);
//    baseEdger(1);
//}
//
//translate([110,0,0])
//difference() {
//    cylinder(h=5, d=48);
//    baseEdger(2);
//}
//
//translate([190,0,0])
//difference() {
//    cylinder(h=5, d=80);
//    baseEdger(3);
//}

module baseEdger(size=0, height=7, dirtyEdge=false) {
  // hollowCylinder is centered
  xTranslate  = ceil(height/2) - 1;
  translate([0,0,xTranslate])
  if (dirtyEdge) {
    hollowCylinder(d=baseEdgeDiameters[size] + 1, h=height, wallWidth=1);
  } else {
    hollowCylinder(d=baseEdgeDiameters[size] + 2, h=height, wallWidth=1);
  }
}

module plainBaseInsert(size=0, height=3) {
    cylinder(d= baseEdgeDiameters[size], h=height);
}