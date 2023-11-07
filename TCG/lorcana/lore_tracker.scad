use <../../scad_modules/general_use_modules.scad>
use <../../dotSCAD/src/helix_extrude.scad>;

r1 = 23;
r2 = 17.5;
levels = 1;
level_dist = 8;

shape_pts = [
  
    [17, -1],
    [17, 4],
    [0.5, 4],
    [0.5, -1],
   
];

difference() {
    helix_extrude(shape_pts, 
        radius = [r1, r2], 
        levels = levels, 
        level_dist = level_dist,
        vt_dir = "SPI_UP"
    );
   
    counterFace = 90/5.5;
    textHeight = 1.1;
    textSize = 6;
    
    rotate([0,0,16])
    translate([31.5,-8,3.8])
    loreCount(number = 0, textSize = textSize, textHeight = textHeight);
    
    rotate([0,0,16])
    translate([29,-5,0.8])
    cylinder(h=3.5,d=2.5, $fn=96);
    
    vector1 = [3.6,1.95,1.5,1.15,1];
    vector1a = [-3.5,-3.5,-3.5,-3.5,-2.5];
    for (i = [1:1:5]) { 
        rotate([0,0, counterFace*i])
        translate([35-(i - i * 0.4 - vector1a[i-1]),0,i * vector1[i - 1]])
        loreCount(number = i, textSize = textSize, textHeight = textHeight);
    }
    
    for (i = [1:1:5]) {
        rotate([0,0,counterFace*i])
        translate([30-(i - i * 0.4),2.5,1+(i*0.4)])
        cylinder(h=3.5,d=2.5, $fn=96);
    }


   vector3 = [0.9,0.9,0.8,0.75,0.68]; 
   vector3a = [-1,-1,-1,-1,-1.5];
   for (j = [6:1:10]) { 
        rotate([0,0,counterFace*j])
        translate([35-(j - j * 0.4 - vector3a[j-6]),0,j * vector3[j - 6]])
        loreCount(number = j, textSize = textSize, textHeight = textHeight);
   }
   
   for (j = [6:1:10]) {
        rotate([0,0,counterFace*j])
        translate([31-(j - j * 0.4),2,1+(j*0.4)])
        cylinder(h=3.5,d=2.5, $fn=96);
    }
    vector4 = [0.65,0.65,0.61,0.59,0.6];
    vector4a = [0,0,1,0.7,1.5];
    for (k = [11:1:15]) { 
        rotate([0,0, counterFace*k])
        translate([33-(k - 5 - vector4a[k-11]),0,k * vector4[k - 11]])
        loreCount(number = k, textSize = textSize, textHeight = textHeight);
    }
    
    for (k = [11:1:15]) {
        rotate([0,0,counterFace*k])
        translate([36.5-k,2.5,1+(k*0.35)])
        cylinder(h=3.5,d=2.5, $fn=96);
    }
    
    vector5 = [0.6,0.55,0.55,0.55,0.55];
    vector5a = [0.5,0.8,1.5,1.9,2.5];
    for (l = [16:1:20]) {
        rotate([0,0, counterFace*l])
        translate([35-(l-5-vector5a[l-16]),0,l * vector5[l - 16]])
        loreCount(number = l, textSize = textSize, textHeight = textHeight);           
    }
    
    vector5b = [0,0,1,1,1.9];
    for (l = [16:1:20]) {
        rotate([0,0,counterFace*l])
        translate([38-l+vector5b[l-16],2.5,1+(l*0.4)])
        cylinder(h=3.5,d=2.5, $fn=96);
    }
    
   
}

translate([25,-7,11])
scale([0.20,0.20,1])
rotate([0.5,0,0])
aurora();


translate([-5,10,10.05])
sword();


translate([6,-10,10.05])
rotate([0,0,90])
rotate([0,0,90])
sword();

difference() {
    translate([0,0,-1])
    cylinder(h = levels * level_dist + 3, r1 = r1, r2 = r2, $fn=96);
    translate([0,0,8.9])
    castleInset();
}




module loreCount(number, textSize, textHeight) {
    linear_extrude(textHeight)
    text(str(number), size=textSize); 
}

module castleInset() {
    cube([30.3, 13.4, 2.5], center=true);
}

module shield() {
    shieldPoints = [[10,0],[4,0],[3,3]];
    angle = -5;
    
    rotate([-4,0,0])
    linear_extrude(1)
    polygon(shieldPoints);
    mirror([0,1,0])
    rotate([-5,0,0])
    linear_extrude(1)
    polygon(shieldPoints);
    translate([7,0,0.5])
    cube([6,0.2,1], center=true);
}

module aurora() {

    for(i=[10:20:90]) {
        rotate([0,0,i])
        isocles();
    }

    for(i=[-10:-20:-90]) {
        rotate([0,0,i])
        isocles();
    }
}

module isocles(extrude=3) {
    linear_extrude(3)
    polygon(points=[[0,0],[-4,0],[0,25],[4,0]]);
}
module sword() {
    difference() {
        scale([5,0.3,0.1])
        sphere(d=6,$fn=96);
        translate([-9,0,0])
        cube([15,2,2], center=true);
    }
    translate([-1.7,-1.25,-0.1])
    cube([0.5,2.5,0.5]);
    translate([-3.5,-0.4,-0.1])
    cube([2,0.8,0.5]);
}