n = 4;
tileSize = 20;   // each square is of this size
padding = 30;    // padding around the print
xMax = 300;
yMax = 300;

gap = (xMax - 2 * padding - n * tileSize)/(n - 1);

for (x = [0 : n-1] ) {
  for (y = [0 : n-1] ) {
    translate([padding + x * (gap + tileSize), padding + y * (gap + tileSize),0]) {
      cube([tileSize, tileSize, 0.4],false);
    }
  }    
}

translate([padding, padding, 0]) {
  cube([xMax - 2 * padding, 5, 0.2],false);
}

translate([padding, padding, 0]) {
  cube([5, yMax - 2 * padding, 0.2],false);
}

translate([xMax - padding, padding, 0]) {
  cube([5, yMax - 2 * padding, 0.2],false);
}

translate([padding, yMax - padding, 0]) {
  cube([xMax - 2 * padding, 5, 0.2],false);
}

for (x = [1 : n-2] ) {
  translate([padding + x * (gap + tileSize) + tileSize/2 - 2, padding, 0]) {
    cube([4, yMax - 2 * padding, 0.2],false);
  }
}

for (y = [1 : n-2] ) {
  translate([padding, padding + y * (gap + tileSize) + tileSize/2 - 2, 0]) {
    cube([xMax - 2 * padding, 4, 0.2],false);
  }
}