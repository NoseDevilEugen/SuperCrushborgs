/// @description Insert description here
// You can write your code in this editor
//движущийся по горизонтали блок

hsp=1
vsp=0
push=true
push_hor=false
push_ver=false
timer=0

//get mask offset
bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)
