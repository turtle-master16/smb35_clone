var text_label = "";

var score_size = 5;
var index = 0;
repeat(score_size) {
	text_label += string(obj_game.scores_to_display[index]) + "\n";
	index += 1;
}

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_set_font(fnt_score_and_lives);

draw_text(x, y, text_label);
