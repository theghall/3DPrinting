use <jack_repair_station_modules.scad>

translate([0,0,-92])
difference(){
translate([0,0,92])
craneTop();
translate([0,0,100])
craneTopExtension();
}
