/// @description Insert description here
// You can write your code in this editor
//draw_self()

if(instance_exists(my_flower) && my_flower.action!=flower_actions.idle)
	{
	draw_self()
	}

if(instance_exists(my_flower) && my_flower.action==flower_actions.idle)
	{

	if(leg_num!=0)
		{
		var dir = point_direction(id.x, id.y, my_flower.xstart, my_flower.ystart)
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, dir+90, -1, 1)
		}
	else
		{
		if(sign(my_flower.angle_accelerration)!=0)
			{
			image_xscale=sign(my_flower.angle_accelerration)*-image_yscale
			}
		image_index=clamp(floor(abs(my_flower.angle_accelerration*80)), 0, image_number-1)
		//draw_text(x+10, y, string(image_index))
		draw_self()
		}
	}