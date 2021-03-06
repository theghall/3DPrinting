use <jack_repair_station_modules.scad>

translate([20,-13,116])
rotate([0,0,90])
toolChest();

translate([20,-13,27])
rotate([0,0,90])
toolChest();

translate([0,0,10.5])
union() {
    platform(20, 57);
    translate([35,0,15])
    platformMovementLimiter();
    translate([0,0,96.5])
    platform(12, 40, true);
    translate([35,0,0])
    magLevCylinder();
}


translate([-140,0])
rails();

translate([-90,0,2])
warjackPlatform(19);

translate([-5,30,27])
controlPanelComplete();

translate([-5,30,116])
controlPanelComplete();

module controlPanelComplete() {
    union() {
        translate([0,0,22.5])
        rotate([33,0,0])
        controlPanel();
        controlPanelSupport();
    }
}

translate([91,0,3])
rotate([0,0,90])
personalLift();

// Crane
translate([-100,100,0])
union() {
rotate([0,0,10])
craneBase();
translate([0,0,90])
craneTop();
translate([0,0,100])
craneTopExtension();
translate([0,0,175])
craneCap();
translate([0,0,150])
boomAnchor();
translate([0,0,150])
rotate([0,-90,90])
magLevCylinder(h=75,d=10);
translate([0,-70,150])
rotate([0,-90,90])
magLevCylinder(h=25,d=7);
translate([0,-85,150])
rotate([90,0,0])
craneHookAnchor();
translate([0,-86,140])
craneCableGuide();
translate([0,-86,132])
craneHookCable();
translate([15,-88.5,140])
rotate([0,90,90])
craneHook();
}

translate([0,80,4])
weaponCrateBottom();
translate([0,90,5])
rotate([-45,0,0])
weaponCrateTop();

translate([-180,80,4])
weaponCrateBottom();
translate([-180,90,5])
rotate([-45,0,0])
weaponCrateTop();