// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_score(my_player, add_score){
	if(my_player!=noone && my_player.state!=states.dead)
		{
		my_player.my_score=my_player.my_score+add_score
		my_player.my_score_hidden=my_player.my_score_hidden+add_score
		}
}