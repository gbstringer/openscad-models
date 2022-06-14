$ht=8;   // height
$wd=15  ;  // width
$dp=11;  // depth
$wall=1; // wall thickness

color("yellow")
  //translate([0, 0, 0])
//   difference() {
 //  translate([0,0,0]) cube([15,11,$ht], center=false);
 //  
 //      union() {
//         translate([10,1,8]) { cube([13,9,$ht+4], center=false); }
//        translate([7.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
//        translate([5.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
//        translate([9.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
 //       translate(0,0,-1)
 //       linear_extrude(height=9)
 //         square([13,9], center=true)
 //     }
      //linear_extrude(height=10) translate([0,0,0]) square([15,11], center=false);
  //  }
            
         
//   difference() {cube(12,center=true); cube(8, center=false); }   
            
 difference() {
   union() {
        cube([$wd+1,$dp+1,$ht], center=false);
        rotate([0,-90,0]) translate([4,6,-20]) cylinder(h=24, r=3, centre=false, $fn=100);
   }
   union() {
//     translate([
     translate([$wall,$wall,$wall]) { cube([$wd-$wall,$dp-$wall,$ht+4], center=false); }
//     rotate([0,-90,0]) translate([7.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
//     rotate([0,-90,0]) translate([5.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
//     rotate([0,-90,0]) translate([9.5,5.5,-1]) cylinder(h = 4, r=0.5, center = false, $fn=100);
//     translate([$wd/3,($dp+$wall)/2,-$wall]) cube([$wd/3,$wall/2,$wall*3],center=false);
     translate([$wall/2,$wall/2,$ht-$wall]) { cube([$wd,$dp,$wall*3], center=false); }
     rotate([0,-90,0]) translate([4,6,-24]) cylinder(h=32, r=2.5, centre=false, $fn=100);
   }
 };   
 //difference() {
    //rotate([0,-90,0]) translate([4,6,-20]) cylinder(h=24, r=3, centre=false, $fn=100);
    //rotate([0,-90,0]) translate([4,6,-4]) cylinder(h=18, r=2.5, centre=false, $fn=100);
 //}