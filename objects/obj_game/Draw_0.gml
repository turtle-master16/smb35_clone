var hp_label = "lives: " + string(hp);
var score_label = "score: " + string(player_score);
var time_label = "time: " + string(int64(alarm_get(0) / room_speed));
var space = "   ";

var text_label = hp_label + space + score_label + space + time_label;

var camera = view_get_camera(0);

x = camera_get_view_x(camera) + initial_x;
y = camera_get_view_y(camera) + initial_y;

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(fnt_score_and_lives);

draw_text(x, y, text_label);
