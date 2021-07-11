module rod(a, b, r) {
        hull() {
            translate(a) sphere(r,$fn=8);
            translate(b) sphere(r,$fn=8);
        }
    }
translate([0,0,1.1])
rod([0,0,0],[0,5,0],1.15);