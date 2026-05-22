// Center
var cx = room_width / 2;
var cy = display_get_gui_height() / 2;

var w = 824;
var h = 520;

// Setup results background
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(cx - w/2, cy - h/2, cx + w/2, cy + h/2, false);
draw_set_alpha(1);

// Header
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(Fnt_Arial98);
draw_text(cx, 150, "SONIC has got through the ACT:");

// Section 1: Rings
draw_text(cx, 280, "RINGS: " + string(show_rings));

// Section 2: Deaths
draw_text(cx, 360, "DEATHS: " + string(show_deaths));

// Section 3: Score
draw_text(cx, 440, "SCORE: " + string(show_results));

// Section 4: Press enter to continue
draw_text(cx, 520, "Press Enter to continue...");


// Dodges affecting other objects
draw_set_halign(fa_left);