/// @description Insert description here
// You can write your code in this editor

visible=false
player=o_controller.player1

scr_init_standing()

x_start=x
y_start=y

velocity_dampening = 1


counter=0
angle_accelerration = 0
angle_velocity = 0

starting_velocity=1.2
//2.39 for full 180 swing
// lesser the starting velocity lesser the angle


//angle_accelerration = (-image_yscale*(.05*velocity_dampening)) * dcos(counter)
//angle_velocity = (2.39)+angle_accelerration

distance=0



angle=0


anchor_x = x
anchor_y = y-10




image_index=0

image_xscale=-1



image_speed=0.2

distance_to_player=0

hp=20

hit_timer=0


counter2=0
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

//AI variables
AI_active=false

whole_body=noone
oneway_col=false
feet_col=false
just_feet=noone

action=flower_actions.rise

legs=7

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}


val1=0
val2=0

if(image_yscale>0)
	{
	var i=0
	for(i=0; i<=legs; i++)
		{
		leg[i]=instance_create(x, bbox_bottom+(12*i), o_flower_leg_ghost)
		with(leg[i])
			{
			leg_num=i
			image_yscale=other.image_yscale
			depth=other.depth+1
			//visible=false
			sprite_index=s_flower_leg
			image_index=0
			image_speed=0
			my_flower=other.id
			}
		}
	}
else
	{
	var i=0
	for(i=0; i<=legs; i++)
		{
		leg[i]=instance_create(x, bbox_top-(12*i), o_flower_leg_ghost)
		with(leg[i])
			{
			leg_num=i
			image_yscale=other.image_yscale
			depth=other.depth+1
			//visible=false
			sprite_index=s_flower_leg
			image_index=0
			image_speed=0
			my_flower=other.id
			}
		}
	}
legs_total=array_length(leg)

bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left

s_array[flower_actions.rise]=s_flower_rise
s_array[flower_actions.bloom]=s_flower_head_bloom
s_array[flower_actions.idle]=s_flower_head_idle
