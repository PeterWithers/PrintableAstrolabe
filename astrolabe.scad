// Created: 2013-03-10
// Author: Peter Withers
// Licensed as GPL 2

#baseTympan();
topRete();
pointerAlidade();

module pointerAlidade(){
	rotate(a=[0,0,160]) difference(){
		translate([0, 0, 10]) {
			union(){
				cylinder(5, 10, 10);
				cube(size = [5, 90, 5], center = false);
			}
		}
		cylinder(20, 5, 5);
	}
}

module topRete(){
	difference(){
		translate([0, 0, 5]) {
			cylinder(5, 90, 90);
		}
		difference(){
			cylinder(15, 80, 80);
			union() {
				cube(size = [5, 200, 30], center = true);
				translate([20, 0, 0]) difference(){
					cylinder(15, 60, 60);
					cylinder(15, 55, 55);
				}
			}
		}
	}
}

module baseTympan(){
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
