/// @description Insert description here
// You can write your code in this editor

fn_on_destroy = function()	
	{
	
	}

scr_init_wall_standing()

add_score=100
add_to=noone

my_next_room=noone
player_change_timer=1
player=o_controller.player1

//show_message(string(o_controller.player1))



image_index=0
image_speed=0.2

bullet_x=0
bullet_y=0

hit_timer=0

player_dir=180

timer_shoot=90

hp=30
target=instance_create(x, y, o_homing_aim)

debr_x=x
debr_y=y
my_debr=noone