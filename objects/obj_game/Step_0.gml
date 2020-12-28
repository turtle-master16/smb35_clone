var is_player_dead = (hp <= 0);

if (!is_game_win && is_player_dead || !is_game_timer_ticking()) {
	execute_game_over();
}
