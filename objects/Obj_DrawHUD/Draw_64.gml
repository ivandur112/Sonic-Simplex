// Draw HUD
draw_set_font(Fnt_Arial98);
draw_set_halign(fa_left);
draw_set_colour(c_yellow);
draw_text(10, 10, "Rings: " + string(global.rings));
draw_set_colour(c_red);
draw_text(10, 40, "Deaths: " + string(global.deaths));