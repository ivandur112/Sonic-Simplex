// Detect ONLY with Sonic collision
if (place_meeting(x, y, Obj_Sonic))
{
	if (!Obj_Sonic.fucked)
		with (Obj_Sonic)
		{
			audio_play_sound(SFX_Ring, 2, false);
			global.rings += 1;
		}
		instance_destroy();
}
if (place_meeting (x, y, Obj_Lava))
{
	instance_destroy();
}