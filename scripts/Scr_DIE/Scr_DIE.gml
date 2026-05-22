// Yeah baby, my very first function ever is a dead function!!!!
function scr_DIE()
{
	if (fucked) exit;
	global.deaths++;
	global.rings = 0;
	fucked = true;
	move_speed = 0;
	move_y = -8
	sprite_index = Spr_SonicDeath;
	audio_play_sound(SFX_Death, 1, false);
}