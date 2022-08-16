/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
//draw_self()
//draw_set_colour(c_white)

//draw_text(x-10 ,y-25, string(bbox_top) + " | ")
//draw_text(x+2 ,bbox_bottom+20, string(bbox_right))

/*
draw_text(bbox_left-20, bbox_top-10, string(bbox_left))
draw_text(bbox_right+10, bbox_top-10, string(bbox_right))

draw_text(x, bbox_top-20, string(x))
*/
if(place_meeting(x+(sign(hsp)), y, o_controller.player) &&
((x<o_controller.player.x && o_controller.player.bbox_left<id.bbox_right)
|| (x>o_controller.player.x && o_controller.player.bbox_right>id.bbox_left)))
    {
    image_blend = c_red
    o_controller.player.y=id.y-o_controller.player.sprite_height
    }
else
    {
    image_blend = c_white
    }

if((place_meeting(x+(sign(hsp)), y, o_controller.player) &&
((x<o_controller.player.x && o_controller.player.bbox_left<id.bbox_right)
|| (x>o_controller.player.x && o_controller.player.bbox_right>id.bbox_left)))
|| (place_meeting(x, y-1, o_controller.player) 
&& (y>o_controller.player.y && o_controller.player.bbox_bottom>id.bbox_top))
|| (place_meeting(x, y+1, o_controller.player) 
&& (y<o_controller.player.y && o_controller.player.bbox_top<id.bbox_bottom)))
    {
    image_blend = c_red
    //o_controller.player.y=id.y-o_controller.player.sprite_height
    o_controller.player.y=o_controller.player.y-3
    }
else
    {
    image_blend = c_white
    }
    
scr_draw_tiled_sprite()

/* */
/*  */
