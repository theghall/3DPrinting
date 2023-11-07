
difference() {
 color("blue")
 difference() {
        cylinder(d=12,h=3,$fn=10);
        translate([0,0,2])
        
        cylinder(d=11,h=1.5,$fn=96);
    }
    
    translate([-2.7,0,1.5])
    color("gold")
    union() {
        cylinder(d=6, h=2, $fn=3);
        translate([5,0,0])
        cylinder(d=6, h=2, $fn=3);
    }
}

