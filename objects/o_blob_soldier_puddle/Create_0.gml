/// @description Insert description here
// You can write your code in this editor

scr_init_standing()

ow_p=false

add_score=100
add_to=noone

hit_timer=0

hsp=0
vsp=0
hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false
grav=0.25
fric=1
floor_y=0


/*
	sprite_index=s_pantheon_idle_cropped
	start_yoffset=bbox_bottom-y
	sprite_index=s_blob_idle
	result_yoffset=bbox_bottom-y
	y=y+(start_yoffset-result_yoffset-1)
*/

//show_message(string(start_yoffset-result_yoffset))




hp=10

bullet_x=x
bullet_y=y

image_index=0

image_speed=0.2

image_xscale=1

player=o_controller.player1

timer=-1

grenade=o_grenade_small

distance_to_player=0

dir=0

//target=instance_create(x, y, o_homing_aim)


bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

whole_body=noone
oneway_col=false
feet_col=false
just_feet=noone

target=noone