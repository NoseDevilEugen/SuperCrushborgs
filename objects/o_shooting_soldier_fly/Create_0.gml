/// @description Insert description here
// You can write your code in this editor

player=o_controller.player1

timer_shoot=90

add_score=70
add_to=noone
hit_timer=0

scr_init_standing()

ow_p=false
//show_message(string(start_yoffset-result_yoffset))

hp=6

bullet_x=x
bullet_y=y

image_index=0

image_speed=0.02

image_xscale=-1


grenade_toss_timer=120

grenade=o_grenade_small

action=shooting_soldier.idle

distance_to_player=0

dir=0

hsp=0
vsp=0

grav=0.25

hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false

state=states.grounded

target=instance_create(x, y, o_homing_aim)


AI_active=false

counter=0

//sprites

var i
for(i=0; i<360; i++)
	{
	dsin_array[i]=dsin(i)
	}

my_jetpack=instance_create_layer(x-(12*image_xscale), y-8, "depth_newest", o_jetpack_enemy)

sprite_array[shooting_soldier.idle]=s_simple_soldier_shoot_fly_idle
sprite_array[shooting_soldier.aim_straight]=s_simple_soldier_shoot_fly_aim_straight
sprite_array[shooting_soldier.aim_down]=s_simple_soldier_shoot_fly_aim_down
sprite_array[shooting_soldier.aim_diagonal_down]=s_simple_soldier_shoot_fly_aim_down_diagonal
sprite_array[shooting_soldier.aim_up]=s_simple_soldier_shoot_fly_aim_up
sprite_array[shooting_soldier.aim_diagonal_up]=s_simple_soldier_shoot_fly_aim_up_diagonal

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