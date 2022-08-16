/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
//draw_self()

//draw_text(bbox_right+15 ,y+25, string(bbox_bottom))

/*
draw_text(bbox_right+15 ,y-25, string(y))
draw_text(bbox_right+15 ,y, string(bbox_top_offset))
*/
/*
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
*/

draw_self()

//draw_text(x, bbox_bottom-5, string(bbox_bottom))
//draw_text(x, bbox_bottom-20, string(timer))

/*
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
*/    
if(push_ver==true)
    {
    image_blend = c_blue
    }
else
    {
    image_blend=c_white
    }
    
//scr_draw_tiled_sprite()

    

/* */
/*  */
