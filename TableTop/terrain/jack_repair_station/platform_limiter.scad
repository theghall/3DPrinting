use <jack_repair_station_modules.scad>
use <jack_repair_tower.scad>

difference() {
    platformMovementLimiter();
    translate([0,0,-1])
    magLevCylinder();
}