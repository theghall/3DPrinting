use <jack_repair_station_modules.scad>
use <jack_repair_tower.scad>

difference() {
    translate([-90,0,-7.5])
    warjackPlatform(20);
    translate([-138,0,-10])
    rails([1,1,1]);
    translate([-107,-0.25,-10])
    rails([0.25,1.1,1.1]);
    translate([-35,-0.25,-10])
    rails([0.15,1.1,1]);
}


