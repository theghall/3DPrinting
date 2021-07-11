union() {
difference() {
   cylinder(h=5, r=16, center=true, $fn=128);

    // Platform impressions
    translate([0,0,1.6])
    hollowCylinder(d=25, h=1, wallWidth=1);
    
    translate([0,0,1.6])
    hollowCylinder(d=18, h=1, wallWidth=1);
    
    translate([0,0,1.6])
    cylinder(h=2, r=2, center=true, $fn=128);
}

// Bisect circles on platform
translate([0,0,1.5])
cube([1,25.5,2], center=true);
}
    
module hollowCylinder(d=5, h=10, wallWidth=1, $fn=128, center=true)
{
	difference()
	{
		cylinder(d=d, h=h, center);
		translate([0, 0, -0.1]) { cylinder(d=d-(wallWidth*2), h, center); }
	}
}