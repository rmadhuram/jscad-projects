/**
 * Flag of India
 * by Raj Madhuram
 * 08/15/2018 - Happy Independence Day!
 */
module chakra() {
  cylinder($fn = 36,  h = 5, r = 3.5);
  for (angle = [0:15:345]) 
    linear_extrude(height = 4.8) rotate([0, 0, angle]) polygon([[0,0],[6,-0.5],[17.5,-0.2],[17.5, 0.2],[6,0.5]]);
  
  difference() {
    cylinder($fn = 72,  h = 5, r = 20);
    cylinder($fn = 72,  h = 5.1, r = 17);
  }  
}

module flag_white() {
  difference() {
    translate([0,0,3]) cube([225, 50, 6], center=true);
    translate([0,0,1]) cylinder($fn = 72, h = 6, r = 20.5);
  }
}

module flag_orange() {
  translate([0,50,3]) cube([225, 50, 6], center=true);
}

module flag_green() {
  translate([0,-50,3]) cube([225, 50, 6], center=true);
}

module holder() {
  difference() {
    translate([0,0,2]) cube([228, 153, 2], center=true);
    translate([0,0,2]) cube([226, 151, 2.1], center=true);
  }   
}

translate([0,0,1]) color("blue") chakra();
color("white") flag_white();
color("orange") flag_orange();
color("green") flag_green();
color("white") holder();