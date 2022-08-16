/// @description Insert description here
// You can write your code in this editor

ow_p=false

my_next_room=noone

player=o_controller.player1

scr_init_standing()

hp=20

image_index=0

image_xscale=-1

grenade_toss_timer=120

grenade=o_grenade_small

image_speed=0.2

distance_to_player=0

dir=0

target=instance_create((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2, o_homing_aim)

hit_timer=0

hsp=0
hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false
vsp=0
vsp_carry=0
col=false
grav=0.6
fric=1
floor_y=0
vortexed=false
vortex_hsp=12
catched_x=0
catched_y=0
//im good at naming variables, trust me

//AI variables
AI_active=false

whole_body=noone
oneway_col=false
feet_col=false
just_feet=noone


bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left