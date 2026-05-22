// 98 Drugs for Sonic
if (!other.invincible)
{
	// Check if Sonic is sigma
	if (global.rings > 0)
	{
		audio_play_sound(SFX_LoseRings, 1, false);
		global.rings  = 0;
		other.move_speed = -sign(other.move_speed) * 4;
		other.move_y = -6;
		other.invincible = true;
		other.inv_timer = 0;
	}
	else
	{
		with (other) scr_DIE();
	}
}