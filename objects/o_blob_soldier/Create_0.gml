/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
player=o_controller.player1

ow_p=false

add_score=100
add_to=noone

hsp=0
hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false


/*
sprite_index=s_pantheon_idle_cropped
start_yoffset=bbox_bottom-y

sprite_index=s_blob_idle

result_yoffset=bbox_bottom-y

y=y+(start_yoffset-result_yoffset-1)
*/

//show_message(string(start_yoffset-result_yoffset))

scr_init_standing()

image_index=0

image_speed=0.2

hit_timer=0

//image_xscale=-1



vsp=-5

grav=0.3


dir=0

target=instance_create(x, y, o_homing_aim)



bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

whole_body=noone
oneway_col=false
feet_col=false
just_feet=noone
