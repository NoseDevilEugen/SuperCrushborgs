/// @description Insert description here
// You can write your code in this editor
draw_self()

if(action==phantom_actions.dash)
	{
	draw_sprite_ext(s_phantom_sword_attack_new, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
	}

/*
if(action==phantom_actions.rage)
	{
	draw_sprite_ext(s_phantom_rage_exp, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
	}
*/

/*
if(player==o_controller.player1)
	{
	draw_text(x, y-20, string("P1"))
	}
else
	{
	draw_text(x, y-20, string("P2"))
	}
*/


//draw_text(30, 160, "Distance: " + string(point_distance(x, y, player.x, player.y)))
//draw_text(30, 180, "Image: " + string(image_index))
//draw_text(30, 200, "Action: " + string(t_array[action]))
//draw_text(30, 220, "Change: " + string(player_change_timer))	
//draw_text(30, 240, "Xscale: " + string(image_xscale))
//draw_text(30, 260, "- sign: " + string(-sign(x-player.x)))
//draw_text(30, 240, "Dash: " + string(dash_timer))
//draw_text(30, 260, "Fuma: " + string(fuma_timer))
//draw_text(30, 280, "Helm: " + string(helm_timer))
//draw_text(x, y-40, string(hp))
	
//draw_text(x, bbox_top, string(y))

scr_boss_blink()