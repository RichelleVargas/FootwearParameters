$fn = 50;

trY=2.5;

//plantilla
cube(size=[10,5,1]);
translate([0,2.5,0]) cylinder(h = 1, r = 2.5); //toe
translate([10,2.5,0]) cylinder(h = 1, r = 2.5); //heel

module back(){
	difference(){
		rotate([0,5,0])
		translate([10,trY,1]) cylinder(h=5.5, r=2.5);

		rotate([0,5,0])
		translate([9,trY,1]) cylinder(h=7, r=2.5);	
	}
}

module flipflop(y){
	difference(){
		translate([0,trY,2.5]) rotate([0,y,0]) cylinder(h=1, r=2.5);
	
		translate([-1,trY,2.5]) rotate([0,y,0]) cylinder(h=3, r= 2);
	}
}

module sandal(){
	back();
	flipflop(85);

	difference(){
		translate([0,trY,0]) rotate([0,-10,0]) cylinder(h=5, r=2.5);
	
		cube(size=[3,6,7]);

		translate([-1.4,trY,2.5]) rotate([0,80,0]) cylinder(h=3, r= 2);
	}
}

module slipper(){
	sandal();
	rotate([0,-3,0]) cube(size=[10.5,0.5,5]);
	translate([0,4.5,0]) rotate([0,-3,0]) cube(size=[10.5,0.5,5]);
	difference(){
		translate([-2.9,trY,4]) rotate([0,80,0]) cylinder(h=8, r=2.5);

		translate([0,trY,3]) rotate([0,80,0]) cylinder(h=6, r=2.5);
	}
		
}

//flipflop(90);
//sandal();
//slipper();
