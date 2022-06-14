$ht=5;

color("yellow")
  //translate([0, 0, 0])
    //difference() {
      linear_extrude(height=$ht) translate([0,0,0]) square([15,11], center=false);
   difference() {
       union() {
        linear_extrude(height=$ht+4) translate([1,1,8]) square([13,9], center=false);
        translate([7.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
        translate([5.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
        translate([9.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
 //       translate(0,0,-1)
 //       linear_extrude(height=9)
 //         square([13,9], center=true)
      }
      //linear_extrude(height=10) translate([0,0,0]) square([15,11], center=false);
    }
            
            
            
            