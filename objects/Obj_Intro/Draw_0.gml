// Draw video
var video_data = video_draw();
var video_status = video_data[0];

// Play video
if (video_status == 0)
{
	draw_surface_ext(video_data[1], 50, 50, 1.8, 1.2, 0, c_white, 1);
}

// Check if video is finished
if (video_status == -1) || keyboard_check(vk_enter)
{
	video_close();
	room_goto(TitleScreen);
}