basePlate();

module basePlate(){
	difference(){
		cylinder(5,90, 90);
		union(){
			for(ringNumber = [1, 5, 10, 18]) {
				markerRing(30 + ringNumber * 1.5, 20 + ringNumber / 2, 0);
			}
		}
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