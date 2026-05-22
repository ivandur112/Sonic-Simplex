// Music utilities
var new_music = -1;
var loop = false;

// Check cases
var room_name = room_get_name(room);

// NON-STUPID REPEATING THINGEY
if (string_pos("Woodland1_", room_name) == 1)
{
	loop = true;
	new_music = Mus_WoodlandForest1;
}
if (string_pos("Woodland2_", room_name) == 1)
{
	loop = true;
	new_music = Mus_WoodlandForest2;
}
if (string_pos("Dusty_", room_name) == 1)
{
	loop = true;
	new_music = Mus_DustyRidge;
}
if (string_pos("IceBase1_", room_name) == 1)
{
	loop = true;
	new_music = Mus_IceBase1;
}
if (string_pos("IceBase2_", room_name) == 1)
{
	loop = true;
	new_music = Mus_IceBase2;
}
if (string_pos("MineMaze_", room_name) == 1)
{
	loop = true;
	new_music = Mus_MineMaze;
}
if (room == Results)
{
	loop = false;
	new_music = Mus_ActClear;
}
if (room == NoWay)
{
	// Music utilities
var new_music = -1;
var loop = false;

// Check cases
var room_name = room_get_name(room);

// NON-STUPID REPEATING THINGEY
if (string_pos("Woodland1_", room_name) == 1)
{
	loop = true;
	new_music = Mus_WoodlandForest1;
}
if (string_pos("Woodland2_", room_name) == 1)
{
	loop = true;
	new_music = Mus_WoodlandForest2;
}
if (string_pos("Dusty_", room_name) == 1)
{
	loop = true;
	new_music = Mus_DustyRidge;
}
if (string_pos("IceBase1_", room_name) == 1)
{
	loop = true;
	new_music = Mus_IceBase1;
}
if (string_pos("IceBase2_", room_name) == 1)
{
	loop = true;
	new_music = Mus_IceBase2;
}
if (string_pos("MineMaze_", room_name) == 1)
{
	loop = true;
	new_music = Mus_MineMaze;
}
if (room == Results)
{
	loop = false;
	new_music = Mus_ActClear;
}
if (room == NoWay)
{
	loop = true;
	new_music = Mus_NoWay;
}

// Check when new music
if (new_music != -1 )
{
	if (new_music != current_music)
	{
		if (current_music != -1 && audio_is_playing(current_music))
		{
			audio_stop_sound(current_music);
		}

		current_music = new_music;
		audio_play_sound(current_music, 1, loop);
	}
}
	new_music = Mus_NoWay;
}

// Check when new music
if (new_music != -1 )
{
	if (new_music != current_music)
	{
		if (current_music != -1 && audio_is_playing(current_music))
		{
			audio_stop_sound(current_music);
		}

		current_music = new_music;
		audio_play_sound(current_music, 1, loop);
	}
}