// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_score_to_both(){
	if(add_to!=noone)
		{
		add_to.my_score=add_to.my_score+add_score
		if(add_to==o_controller.player1)
			{
			if(o_controller.player2!=noone)
				{
				o_controller.player2.my_score=o_controller.player2.my_score+(add_score/2)
				}
			}
		if(add_to==o_controller.player2)
			{
			if(o_controller.player1!=noone)
				{
				o_controller.player1.my_score=o_controller.player1.my_score+(add_score/2)
				}
			}
		}
	
}