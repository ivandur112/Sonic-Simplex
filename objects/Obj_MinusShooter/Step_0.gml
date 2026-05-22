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

// Shoot
shoot_timer--;
if (shoot_timer <= 0)
{
	var bullet = instance_create_layer(x, y, "Instances", Obj_MinusShooterProjectile);
	with (bullet)
	{
		hspeed = 5 * Obj_MinusShooter.image_xscale;
		image_xscale = Obj_MinusShooter.image_xscale;
	}
	shoot_timer = shoot_cooldown;
}