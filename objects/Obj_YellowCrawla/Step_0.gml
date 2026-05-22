// Distance between from the orig_x
actual_distance = x - before_x;

// Move the huzzlebomb
x += dir * vel_speed;

// Recalculate distance
actual_distance = x - before_x;

// Check limits
if (actual_distance >= maxdistance)
{
	dir = -1;
	image_xscale = -1;
}
else if (actual_distance <= -maxdistance)
{
	dir = 1;
	image_xscale = 1;
}
