/// @description Insert description here
// You can write your code in this editor
my_flower=noone

counter=0

leg_num=0


velocity_dampening = 1


counter=0
angle_accelerration = 0
angle_velocity = 0

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}

//visible=false
x_start=xstart
y_start=ystart
/// @description Insert description here
// You can write your code in this editor

player=o_controller.player1

image_index=0

//image_xscale=-1

grenade_toss_timer=120


val1=0
val2=0

image_speed=0

distance_to_player=0

target=noone

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

//show_message("why")