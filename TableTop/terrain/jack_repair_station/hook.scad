use <jack_repair_station_modules.scad>



difference() {
craneHook();
translate([-6,15,2.5])
rotate([90,0,0])
rotate([0,90,0])
craneHookCable();
}



