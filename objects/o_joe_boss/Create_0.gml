/// @description Insert description here
// You can write your code in this editor
my_next_room=room_area_richter_boss
player_change_timer=1
player=o_controller.player1

hsp=0
hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false
vsp=0
grav=0.2
fric=1
floor_y=0
vortexed=false
vortex_hsp=6
catched_x=0
catched_y=0

face_direction=-1

jump_hspeed=1
jump_vspeed=-5

yminus=0

just_feet=noone
ow_p=false

yplus=0

slope_up=false
slope_down=false
shit=false

joe_grounded=false

joe_bosses=1

y_start=y


counter=0
grav=0.2

off=1

hit_timer=0

timer_shot1=250
timer_shot2=100
save_xscale=image_xscale

weapon=irandom_range(0,4)
player_direction=0
phase=1

image_speed=0.5


image_xscale=-1

joe_action=joe_actions.phase1_idle
joe_state=states.grounded

idle_timer=60

shoot_balls=true

hp=300

target=instance_create(x, y, o_homing_aim)

s_array[joe_actions.phase1_idle]=s_joe_1idle
s_array[joe_actions.phase1_jump]=s_joe_1jump	
s_array[joe_actions.phase1_prejump]=s_joe_1prejump
s_array[joe_actions.phase1_land]=s_joe_1land	
s_array[joe_actions.phase2_seq]=s_joe_fly
s_array[joe_actions.fly]=s_joe_fly
s_array[joe_actions.shoot]=s_joe_shoot

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}