use <jack_repair_station_modules.scad>
use <jack_repair_tower.scad>

difference() {
   translate([0,0,2])
   platform(12,40,true);
   translate([20,-13,9])
   rotate([0,0,90])
   toolChest(1);
   translate([-5,30,6])
   controlPanelComplete();
   translate([35,0,-5])
   magLevCylinder();
}


