use <jack_repair_station_modules.scad>
use <jack_repair_tower.scad>

translate([-115,0,0])   
union() {
   rails([1,1,1]);
   translate([90,-0.25,0])
   rails([0.2,1.1,1.1]);
   translate([190,-0.25,0])
   rails([0.1,1.1,1.1]);
}
   
//translate([0,0,14.5])
//platform(24);
//translate([91,0,5])
//rotate([0,0,90])
//personalLift();
