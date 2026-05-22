// Distance between from the orig_y
actual_distance = y - before_y;

// Move the huzzlebomb
y += dir * vel_speed;

// Recalculate distance
actual_distance = y - before_y;

// Check limits
if (actual_distance >= maxdistance)
{
	dir = -1;
}
else if (actual_distance <= -maxdistance)
{
	dir = 1;
}
