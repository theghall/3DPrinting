use <jack_repair_station_modules.scad>

rotate([0,0,10])
craneBase();
translate([0,0,90])
craneTop();
translate([0,0,100])
craneTopExtension();
translate([0,0,175])
craneCap();
translate([0,0,150])
boomAnchor();
translate([0,0,150])
rotate([0,-90,90])
magLevCylinder(h=75,d=10);
translate([0,-70,150])
rotate([0,-90,90])
magLevCylinder(h=25,d=7);
translate([0,-85,150])
rotate([90,0,0])
craneHookAnchor();
translate([0,-86,140])
craneCableGuide();
translate([0,-86,132])
craneHookCable();
translate([15,-88.5,140])
rotate([0,90,90])
craneHook();