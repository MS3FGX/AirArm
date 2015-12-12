// AirArm - End Effector
// Increase resolution
$fn=50;

// Body
body_dia = 9;
body_long = 8;
body_void = 4.4;

// Arm
arm_l = 7;
arm_w = 4;
arm_h = 5;

// Hose holder
hh_od = 8;
hh_id = 5.5;
hh_long = 7;
hh_offset = 2;
hh_angle = 0;;

module body()
{
    difference()
    {
        // Outer wall
        cylinder(h=body_long, r=(body_dia / 2), center=true);
    
        // Void out center mass
        cylinder(h=body_long + 1, r=(body_void / 2), center=true);
    }
}

module arm()
{
    translate([((arm_l / 2) + (body_dia / 2.5)), 0, -((body_long / 2) - (arm_h / 2))])
        cube([arm_l, arm_w, arm_h], center=true);
}

module holder()
{
    // Position at end of arm
    translate([((arm_l + (body_dia / 2)) + hh_offset), 0, -((body_long / 2) - (hh_long / 2))])
    {
        difference()
        {
            // Outer wall
            cylinder(h=hh_long, r=(hh_od / 2), center=true);

            // Opening for hose
            rotate([0, hh_angle, 0])
                cylinder(h=hh_long + 1, r=(hh_id / 2), center=true);
        }
    }
}

// Render
body();
arm();
holder();

// Add socket to top
translate([0, 0, -(body_long / 2)])
    import("STL/socket.stl");