timer++;

switch (state)
{
	// Phase 0: Sonic's animation
    case 0:
        sonic_x += 8;

        if (sonic_x >= sonic_target_x)
        {
            sonic_x = sonic_target_x;
            state = 1;
            timer = 0;
        }
    break;

	// Phase 1: Wait before input (in this case, "Enter" key)
    case 1:
        if (keyboard_check_pressed(vk_enter))
        {
            state = 2;
        }
    break;

	// Phase 2: Options
    case 2:
        if (keyboard_check_pressed(vk_up))
		{
			selected--;
			audio_play_sound(SFX_MenuMove, 1, false);
		}
        if (keyboard_check_pressed(vk_down))
		{
			selected++;
			audio_play_sound(SFX_MenuMove, 1, false);
		}

        if (selected < 0) selected = array_length(options) - 1; 
        if (selected >= array_length(options)) selected = 0; 

        if (keyboard_check_pressed(vk_enter))
        {
            switch (selected)
            {
                case 0:
                    global.level_index = 0;
                    global.room_index = 0;
                    room_goto(global.levels[0][0]);
                break;

                case 1:
                    game_end();
                break;
            }
        }
    break;
}