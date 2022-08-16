// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_focus(){
	
	if(o_controller.player2!=noone)
		{
		if(point_distance(x, y, o_controller.player1.x, o_controller.player1.y)>
		point_distance(x, y, o_controller.player2.x, o_controller.player2.y))
			{
			player=o_controller.player2
			}
		else
			{
			player=o_controller.player1
			}
		}
}