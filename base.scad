// AirArm - Base
// Increase resolution
$fn=50;

// Base dimensions
base_l = 30;
base_w = 30;
base_h = 3;

module remove_socket()
{
    translate([0, 0, 13.5])
        cube([15, 15, 10], center=true);
}

module base()
{
    cube([base_l, base_w, base_h], center=true);
}

// Isolate and position ball end
rotate([180, 0, 0]) translate([0, 0, -10])
{
    difference()
    {
        // Import STL
        translate([0, 2, 3])
            import("STL/BS_Joint.stl");

        // Block out socket side
        remove_socket();
    }
}

// Add base plate
base();

// EOF