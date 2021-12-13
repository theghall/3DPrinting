use <jack_repair_station_modules.scad>
use <jack_repair_tower.scad>

rotate([-33,0,0])
difference() {
        translate([0,1,23])
        rotate([33,0,0])
        controlPanel();
        controlPanelSupport();
}