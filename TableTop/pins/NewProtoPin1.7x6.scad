module rod(a, b, r) {
        hull() {
            translate(a) sphere(r,$fn=8);
            translate(b) sphere(r,$fn=8);
        }
    }

rod([0,0,0],[0,4.5,0],0.92);