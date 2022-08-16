/// @description Insert description here
// You can write your code in this editor
//scr_init_wall_standing()

if(place_meeting(x, y, o_floor))
	{
	while(place_meeting(x, y, o_floor))
		{
		y=y+sign(image_yscale)
		}
	}
//show_message(string(x)+", "+string(y))
player_change_timer=1
player=o_controller.player1
web=instance_create(x, y, o_laser_pointer)
with(web)
	{
	my_spider=other.id
	depth=other.depth+1
	}
	
state=cannon_states.moving

moving_direction=image_xscale
hsp=0
vsp=0
movespeed=1

hp=200

bullet_x=x
bullet_y=y

timer_attack=120

timer_charging=90
timer_laser=60

charge_index=0

target=instance_create(x, y, o_homing_aim)