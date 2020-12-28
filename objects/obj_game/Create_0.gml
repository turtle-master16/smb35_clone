initial_x = x;
initial_y = y;

hp = 3;
player_score = 0;
is_game_win = false;

var score_size = 5;
var index = 0;
repeat(score_size) {
	scores_to_display[index] = 0;
	index += 1;
}

start_game_timer();
