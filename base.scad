// AirArm - Base
// Increase resolution
$fn=50;

// Create base
cube([30, 30, 3], center=true);

// Attach ball.stl
translate([0, 0, 10])
    rotate([180, 0, 0])
    import("STL/ball.stl");