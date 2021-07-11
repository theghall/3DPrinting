module rod(a, b, r) {
        hull() {
            translate(a) sphere(r,$fn=6);
            translate(b) sphere(r,$fn=6);
        }
    }
translate([0,0,1.1])
rod([0,0,0],[0,4,0],1.3);