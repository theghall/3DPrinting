//seed1 = 15;
//seed2 = 15;
//seed3 = 15;
//size_vects = rands(3,10,20,seed1);
//translate_x_vects = rands(3,12,20,seed2);
//translate_y_vects = rands(3,10,20,seed3);
//
//translate([35,5,0])
//rotate([0,0,-165])
//linear_extrude(100)
//for (i=[0:19]){
//    translate([translate_x_vects[i],translate_y_vects[i],0])
//    square(size_vects[i]);
//}

razorbat_pillar1();
razorbat_pillar2();

module razorbat_pillar1(h=100) {
    seed4 = 2;
    seed5 = 5;
    seed6 = 80;
    size_vects2 = rands(3,10,20,seed4);
    translate_x_vects2 = rands(3,12,20,seed5);
    translate_y_vects2 = rands(3,10,20,seed6);

    translate([-5,-35,0])
    linear_extrude(h)
    for (i=[0:19]){
        translate([translate_x_vects2[i],translate_y_vects2[i],0])
        square(size_vects2[i]);
    }
}

module razorbat_pillar2(h=100) {
    seed7 = 2;
    seed8 = 5;
    seed9 = 1;
    size_vects3 = rands(3,10,20,seed7);
    translate_x_vects3 = rands(3,12,20,seed8);
    translate_y_vects3 = rands(3,10,20,seed9);

    translate([-35,-15,0])
    rotate([0,0,-65])
    linear_extrude(h)
    for (i=[0:19]){
        translate([translate_x_vects3[i],translate_y_vects3[i],0])
        square(size_vects3[i]);
    }
}

