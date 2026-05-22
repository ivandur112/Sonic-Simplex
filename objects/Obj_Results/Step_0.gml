timer++;

// Phase 0: Wait
if (phase == 0 && timer > room_speed)
{
    phase = 1;
}

// Phase 1: Rings
if (phase == 1)
{
	audio_play_sound(SFX_Ring, 1, false);
    show_rings += 1;
    
    if (show_rings >= global.rings)
    {
        show_rings = global.rings;
        phase = 2;
    }
}

// Phase 2: Deaths
if (phase == 2)
{
	audio_play_sound(SFX_Death, 1, false);
    show_deaths += 1;
    
    if (show_deaths >= global.deaths)
    {
        show_deaths = global.deaths;
        phase = 3;
    }
}

// Phase 3: Score
if (phase == 3)
{
	audio_play_sound(SFX_Results, 1, false);
    show_results += 100;
    
    if (show_results >= global.score)
    {
        show_results = global.score;
        phase = 4;
    }
}

// Phase 4: Continue
if (phase == 4)
{
    if (keyboard_check_pressed(vk_enter))
    {
        global.level_index++;
        global.room_index = 0;

        room_goto(global.levels[global.level_index][0]);
    }
}