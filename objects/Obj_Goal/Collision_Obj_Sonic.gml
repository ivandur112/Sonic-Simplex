// Check if level is finished
if (!finished)
{
	finished = true;
	global.score = (global.rings * 1000) - (global.deaths * 100); // KRABBY PATTY FORMULAAAAAAA
	if (global.score < 0) global.score = 0;

	// Animation
	sprite_index = Spr_Goal_Spin;
	image_speed = 1;
	
	
	// Say SUGOI to Sonic (Shut Up and Get On It)
	other.speed = 0;
    other.hspeed = 0;
    other.vspeed = 0;
	other.image_speed = 0;
	other.can_move = false;
	
	alarm[0] = sprite_get_number(sprite_index) * room_speed / image_speed + room_speed;
}