// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_transfer_info_to_controller(){
	if(id==o_controller.player1)
		{
		o_controller.player_one_score=my_score
		o_controller.player_one_score_hidden=my_score_hidden
		o_controller.player_one_lives=my_lives
		o_controller.player_one_weapon1=weapon_slot[0]
		o_controller.player_one_weapon2=weapon_slot[1]
		o_controller.player_one_active=active_slot
		}
	
	else if(id==o_controller.player2)
		{
		o_controller.player_two_score=my_score
		o_controller.player_two_score_hidden=my_score_hidden
		o_controller.player_two_lives=my_lives
		o_controller.player_two_weapon1=weapon_slot[0]
		o_controller.player_two_weapon2=weapon_slot[1]
		o_controller.player_two_active=active_slot
		}
}