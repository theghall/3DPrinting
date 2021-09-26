use <razorbat_base.scad>

difference() {
    union() {
      place_pillar1();
        place_pillar2();
    }
    place_base_border();
}
    translate([46,76.5,15])
    rotate([0,0,-10])
    spacer();
    translate([46,76.5,85])
    rotate([0,0,-10])
    spacer();

    translate([19,70.4,15])
    rotate([0,0,35])
    spacer();
    translate([19,70.4,85])
    rotate([0,0,35])
    spacer();

module spacer() {
    cube([1,1,1], center=true);
}