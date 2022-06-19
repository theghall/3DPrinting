
widthX=222;
depthY=170;
heightZ=24;
wallWidth=3;
baseWidth=3;

module toolLid() {
  //shell
  cube([widthX, depthY, 3]);
  // Front
  translate([3,3,3])
  cube([widthX-6, 3, 3]);
  // Rear
  translate([3,depthY-6,3])
  cube([widthX-6, 3, 3]);
  // Left
  translate([3,3,3])
  cube([3,depthY-6,3]);
  // Right
  translate([widthX-6,3,3])
  cube([3,depthY-6,3]);
}

module toolTray() {
    difference() {
        // Shell
        cube([widthX, depthY, heightZ]);
        // Trays
        // Front, Left
        translate([wallWidth,wallWidth,baseWidth])
        cube([175,35, heightZ+0.1]);
        // Front, Right
        translate([179,wallWidth,baseWidth])
        cube([40, 63, heightZ+0.1]);
        // Middle(Front), Left
        translate([wallWidth, 41, baseWidth])
        cube([105,25,heightZ+0.1]);
        // Middle(Front), Right
        translate([111, 41, baseWidth])
        cube([66,25,heightZ+0.1]);
        // Middle(Rear), Left
        translate([wallWidth, 70, baseWidth])
        cube([110,35,heightZ+0.1]);
        // Middle(Rear), Right
        translate([115, 70, baseWidth])
        cube([104,35,heightZ+0.1]);
        // Rear, Left
        translate([wallWidth, 109, baseWidth])
        cube([90,57,heightZ+0.1]);
        // Rear, Right
        translate([95, 109, baseWidth])
        cube([124,57,heightZ+0.1]);
        // Lid cutouts
        // Left
        translate([3,3,heightZ-3])
        cube([3,depthY-8,3]);
        // Right
        translate([widthX-6,3,heightZ-3])
        cube([3,depthY-8,3]);
        // Front
        translate([3,3,heightZ-3])
        cube([widthX-6,3,3]);
        // Rear
        translate([3,depthY-8,heightZ-3])
        cube([widthX-6,3,3]);
        
    }
}
