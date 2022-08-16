/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
player=o_controller.player1

sprite_index=s_hole_spawner_closed

image_index=0
image_speed=0.2

hit_timer=0

dir=1

hp=20

target=instance_create(x, y, o_homing_aim)

hsp=0
hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false
vsp=0
//grav=0.5
fric=1
floor_y=0
vortexed=false
vortex_hsp=12
catched_x=0
catched_y=0
//im good at naming variables, trust me


//AI variables

bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left