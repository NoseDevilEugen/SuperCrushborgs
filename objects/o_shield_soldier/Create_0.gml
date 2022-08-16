/// @description Insert description here
// You can write your code in this editor

player=o_controller.player1

scr_init_standing()

add_score=50
add_to=noone

image_index=0

image_xscale=-1

hit_timer=0

grenade_toss_timer=20*irandom_range(1, 4)

grenade=o_grenade_small

image_speed=0.2

my_shield=instance_create(x, y, o_shield_mask)

pain_timer=90

distance_to_player=0

throw_hsp=3
throw_vsp=-6

target=instance_create(x, y, o_homing_aim)

ow_p=false

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
grav=0.3
//fric=1
floor_y=0
vortexed=false
vortex_hsp=12
catched_x=0
catched_y=0
//im good at naming variables, trust me

hp=9

throw_add_h=1
throw_add_v=1

state=states.grounded

action=shield_actions.idle

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

s_array[shield_actions.idle]=s_simple_soldier_shield_idle
s_array[shield_actions.pain]=s_simple_soldier_shield_pain
s_array[shield_actions.grenade_throw]=s_simple_soldier_shield_throw_grenade