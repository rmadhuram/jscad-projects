/*
  A very simple object made from extruding a square and a cylindrical base.
*/
function main () {
  return [
     linear_extrude({height: 80, twist: 30, slices: 100, center: true},
       difference(
         polygon([[-10, -10], [-10, 10], [10, 10], [10, -10]]),
         polygon([[-9, -9], [-9, 9], [9, 9], [9, -9]])
       )).translate([0, 0, 40]),
       
     linear_extrude({height: 10, twist: 0, slices: 30, center: true},
       circle({r: 25, resolution: 180})).translate([0, 0, 5])
  ];
}
