use <razorbat_base.scad>

difference() {
    ground_terrain();
    place_pillar1();
    place_pillar2();
    place_cutout();
    place_base_border();
}