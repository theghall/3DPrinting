use <jack_repair_station_modules.scad>


difference() {
rotate([0,-90,90])
magLevCylinder(h=60,d=10);
translate([0,-59,0])
rotate([0,-90,90])
magLevCylinder(h=25,d=7);
}
