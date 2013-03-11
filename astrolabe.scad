basePlate();

module basePlate(){
	difference(){
		cylinder(5,90, 90);
		markerRing(30, 20, 0);
		markerRing(40, 30, 0);
	}
}

module markerRing(dia, offsetX, offsetY){
	translate([offsetX,offsetY,3]) {
		difference(){
			cylinder(5,dia+1, dia+1);
			translate([0,0,-1]) cylinder(7,dia, dia);
		}
	}
}