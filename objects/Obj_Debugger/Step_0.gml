// Changing zones
if keyboard_check(vk_lcontrol)
{
	if keyboard_check(ord("1"))
	{
		room_goto(Woodland1_01);
	}
	if keyboard_check(ord("2"))
	{
		room_goto(Woodland2_01);
	}
	if keyboard_check(ord("3"))
	{
		room_goto(Dusty_01);
	}
	if keyboard_check(ord("4"))
	{
		room_goto(IceBase1_01);
	}
	if keyboard_check(ord("5"))
	{
		room_goto(IceBase2_01);
	}
	if keyboard_check(ord("6"))
	{
		room_goto(MineMaze_01);
	}
	if keyboard_check(ord("W"))
	{
		room_goto(NoWay);
	}
}
