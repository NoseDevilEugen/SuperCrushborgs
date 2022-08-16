/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_text(x-60, y, string(y))
var spr_x, spr_y

if(state==cannon_states.charging)
	{
	if(sprite_index==s_mainframe_cannon_up)
		{
		spr_x=x+(16*image_xscale)
		spr_y=y-10
		}
	else if(sprite_index==s_mainframe_cannon_down)
		{

		spr_x=x+(16*image_xscale)
		spr_y=y+10
		}
	else
		{
		spr_x=x+(20*image_xscale)
		spr_y=y
		}
	draw_sprite_ext(s_gun_charging, charge_index, spr_x, spr_y, image_xscale, image_yscale, 0, c_white, 1)
	}