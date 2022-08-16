/// @description Insert description here
// You can write your code in this editor
draw_self()

if(instance_exists(head))
	{
	//draw_text(x+50*image_xscale, y-30, string(head.hp))
	if (head.hit_timer>0)
		{
		head.hit_timer=head.hit_timer-1
	    gpu_set_fog(true, c_white, 0, 0)
		draw_self()
	    gpu_set_fog(false, c_white, 0, 0)
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.3)
	    //blink=false
		}
	else
		{
	    draw_self()
		}
	}

/*
if(player==o_controller.player1)
	{
	draw_text(x, y-120, string("P1"))
	}
else
	{
	draw_text(x, y-120, string("P2"))
	}
	
draw_text(x, y-140, string(player))
*/

//draw_text(bbox_left, bbox_top-10, "Index:" + string(image_index))
//draw_text(x+50*image_xscale, y-30, string(timer_web_shot))