// Previous x (not instance set by YoYo)
var prev_x = x;

// Move platform
x += dir * speed;

// Check limits
if (x > right_corner) dir = -1;
if (x < left_corner) dir = 1;

// Real movement
move_x = x - prev_x;

// Check player's collision
var player = instance_place(x, y - 1, Obj_Sonic);

if (player != noone)
{
    if (player.move_y >= 0)
    {
        player.x += move_x;
    }
}