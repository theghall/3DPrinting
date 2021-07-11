difference() {
    translate([0,0,0])
    cube([28,78,15],center=true);

    // Walkway impression
    translate([0,-6,6.6])
    cube([2,55,2], center=true);
    
    translate([0,45,6.6])
    cylinder(h=5, r=20, center=true, $fn=128);
}