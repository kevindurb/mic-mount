hole_diameter = 8;
mount_width = 20;
hole_screw_depth = 16;
split_width = 6;
mount_height = 30;
shoulder_diameter = 12;
shoulder_depth = 3;

$fa = 0.01;

difference() {
  union() {
    cylinder(mount_width, mount_width/2, mount_width/2, true);
    translate([mount_height/2, 0, 0])
      cube([mount_height, mount_width, mount_width], true);
  }


  cylinder(mount_width + 2, hole_diameter/2, hole_diameter/2, true);

  translate([0, 0, mount_width/2 - shoulder_depth/2])
    cylinder(shoulder_depth + 1, shoulder_diameter/2, shoulder_diameter/2, true);

  translate([0, 0, (mount_width/2 - shoulder_depth/2) * -1])
    cylinder(shoulder_depth + 1, shoulder_diameter/2, shoulder_diameter/2, true);

  cube([mount_width, mount_width + 1, split_width], true);
}