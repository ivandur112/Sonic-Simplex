// Setup player speed and movement
move_speed = 0;
max_speed = 8;
jump_speed = 20;
spin = false;
move_y = 0;
can_move = true;


// Setup Sonic style >:D
acceleration = 0.5;
deceleration = 0.3;
friction = 0.85;

// Setup scale
orig_xscale = image_xscale;

// Setup invincibility and life
invincible = false;
inv_timer = 0;
inv_duration = 120;
hp = 3;

// Setup hurt state
fucked = false;
death_timer = 0;

// Setup global variables
if (!variable_global_exists("deaths"))
{
	global.deaths = 0;
}
if (!variable_global_exists("rings"))
{
	global.rings = 0;
}
if (!variable_global_exists("score"))
{
	global.score = 0;
}

// Setup key and gate
if (!variable_global_exists("has_key"))
{
	global.has_key = false;
}
