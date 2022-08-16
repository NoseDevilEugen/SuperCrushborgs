/// @description Insert description here
// You can write your code in this editor
draw_self()



_x1=lerp(_x1, x + distance_x, sticky)
_y1=lerp(_y1, y + distance_y, sticky)
draw_sprite(s_energygun_bullet_small, 0, _x1, _y1)

_x2=lerp(_x2, _x1 + distance_x, sticky)
_y2=lerp(_y2, _y1 + distance_y, sticky)
draw_sprite(s_energygun_bullet_small, 0, _x2, _y2)