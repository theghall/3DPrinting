use <jack_repair_station_modules.scad>
use <jack_repair_tower.scad>

difference() {
   translate([0,0,2])
   platform(20, 55);
   translate([-140,0,-8.6])
   rails([1,1.1,1]);
   translate([20,-13,12.5])
   rotate([0,0,90])
   toolChest(1);
   translate([-5,30,9.5])
   controlPanelComplete();
   translate([35,0,11.5])
   magLevCylinder();
}

 
