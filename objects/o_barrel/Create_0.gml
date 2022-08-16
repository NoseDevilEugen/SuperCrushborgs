/// @description Insert description here
// You can write your code in this editor

ow_p=false

my_next_room=noone


jump_vsp=0

hsp=0
vsp=0
thrown=false

//grav=0.25
fric=0.05

hp=5

hit_timer=0

target=noone


hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false
floor_y=0


grav=0.2
fric=0.05

state=states.grounded

bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left

whole_body=noone
oneway_col=false
feet_col=false
just_feet=noone