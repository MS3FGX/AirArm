// AirArm - BS_Joint Modifier
// Increase resolution
$fn=50;

module remove_ball()
{
    // Void out ball end
    translate([0, 0, 2.6])
        cube([15, 15, 10], center=true);
}

module remove_socket()
{
    // Void out ball end
    translate([0, 0, 13.5])
        cube([15, 15, 10], center=true);
}


difference()
{
    // Import and center BS Joint
    translate([0, 2, 3])
        import("STL/BS_Joint.stl");

    // Isolate ball
    //remove_socket();
    
    // Isolate socket
    remove_ball();
}