/// @description Insert description here
// You can write your code in this editor

draw_self()

scr_boss_blink()

draw_sprite_ext(sprite_index, image_index, xprevious, yprevious, image_xscale, image_yscale, 0, c_white, 0.5)

/*
var w = sprite_get_width(s_waterfall_boss_chain)
var dir = point_direction(id.x, id.y, start_x, start_y)
//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
var count = point_distance(start_x, start_y, id.x, id.y) div w
for(var i=0; i<count; i++)
    {
    if(i>0)
        {
        draw_sprite_ext(s_waterfall_boss_chain, 0, x + xx * i, y + yy * i, image_xscale, image_yscale, dir, -1, 1)
        }
    }
*/