// Set center x
var cx = display_get_gui_width() / 2;

// Set font
draw_set_halign(fa_center);
draw_set_font(Fnt_Arial98);

// Sonic's fucking perfect clone =U
draw_sprite_ext(Spr_SonicRun, 0, sonic_x, 300, 0.7, 0.7, 0, c_white, 1);

// Title
draw_set_color(c_white);
draw_sprite_ext(Spr_Logo, 0, cx, 300, 0.7, 0.7, 0, c_white, 1);

// Check interaction
if (state == 1)
{
    if (current_time mod 1000 < 500)
    {
        draw_set_color(c_white);
        draw_text(cx, 500, "PRESS ENTER");
    }
}

if (state == 2)
{
    var start_y = 400;
    var spacing = 60;

    for (var i = 0; i < array_length(options); i++)
    {
        if (i == selected)
        {
            draw_set_color(c_blue);
            draw_text(cx, start_y + i * spacing, "> " + options[i] + " <");
        }
        else
        {
            draw_set_color(c_white);
            draw_text(cx, start_y + i * spacing, options[i]);
        }
    }
}
