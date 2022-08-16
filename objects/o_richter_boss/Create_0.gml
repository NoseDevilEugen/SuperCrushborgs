/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
player_change_timer=1
player=o_controller.player1


add_score=1000
add_to=noone

scr_init_standing()
image_speed=0.2

hsp=0
hsp_carry=0
hsp_final=0
vsp=0

walk_dir=-1

hit_timer=0

if(o_controller.game_mode==0 || o_controller.game_mode==1)
	{
	hp=350
	}
else
	{
	hp=500
	}

grav=0.25

timer_axe=180

timer_cross=360

timer_diamond=540

timer_change=60

timer_jump=180

action=belmont_actions.walk

phase=1

target=instance_create(x, y, o_homing_aim)

telegraph=instance_create(x, y, o_richter_telegraph)