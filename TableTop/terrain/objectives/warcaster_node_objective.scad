use <./warcaster_objectives.scad>

for (objectiveNumber=[1:8]) {
    if (objectiveNumber == 1) {
        nodeObjective(str(objectiveNumber));
    } else {
        if (objectiveNumber < 5) {
            translate([objectiveNumber*25-20,0,0])
            nodeObjective(str(objectiveNumber));
        } else {
            translate([(objectiveNumber-4)*25-20,-25,0])
            nodeObjective(str(objectiveNumber));
        }
    }
}