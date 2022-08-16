/// @description Insert description here
// You can write your code in this editor

scr_boss_blink()

var start_x=o_spider.x+(23*o_spider.image_xscale)
var start_y=o_spider.y+(2*o_spider.image_yscale)


var w = sprite_get_width(s_spider_chain)/2
var dir = point_direction(id.x, id.y, start_x, start_y)
//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
var count = point_distance(start_x, start_y, id.x, id.y) div w

if(o_spider.spider_action==spider_actions.hand_attack)
	{
	draw_sprite(s_spider_chain, 0, start_x, start_y)
	}

for(var i=0; i<=count; i++)
    {
    if(i>0 && sprite_index!=-1 && o_spider.spider_action==spider_actions.hand_attack)
        {
        draw_sprite_ext(s_spider_chain, 0, x + xx * i, (y) + yy * i, image_xscale, image_yscale, 0, -1, 1)
        }
    }
	
//draw_text(x, bbox_top-40, "HP:" + string(id.hp))