use <../random_rock/random_rock.scad>
use <../grate/grate_floor_bases.scad>
use <../../../terrain/objectives/warcaster_objectives.scad>

alienNodeRockBase();
translate([90,0,0])
alienNodeGrateBase();

module alienNodeRockBase() {
    difference() {
        randomRockBase(size=4, height=5);
        translate([5,5,11])
        sphere(d=20.5, $fn=8);
    }
}

module alienNodeGrateBase() {
    difference() {
        grateFloor(baseIdx=4, height=5);
        translate([10,35,9])
        sphere(d=20.5, $fn=8);
    }
}