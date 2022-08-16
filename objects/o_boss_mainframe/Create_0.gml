/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
player_change_timer=1
player=o_controller.player1

hsp=0
vsp=0

creatures_arr[0]=o_simple_soldier
creatures_arr[1]=o_simple_dog
creatures_arr[2]=o_barrel_soldier
creatures_arr[3]=o_rocket_soldier
creatures_arr[4]=o_jija
creatures_arr[5]=o_greande_toss_soldier
creatures_arr[6]=o_simple_fly
creatures_arr[7]=o_barrel_magnet
creatures_arr[8]=o_jumping_alien
creatures_arr[9]=o_shooting_soldier







hit_timer=0

timer_shot1=240
timer_shot2=100

counter_hsp=0
counter_vsp=0

val1=0
val2=0

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}

phase=1

//sprite_index=s_waterfall_boss_head_move_right

hp=300

target=instance_create(x, y, o_homing_aim)

eye[0]=instance_create(x, y, o_mainframe_eye)
eye[1]=instance_create(x, y, o_mainframe_eye)
eye[2]=instance_create(x, y, o_mainframe_eye)
eye[3]=instance_create(x, y, o_mainframe_eye)
eye[4]=instance_create(x, y, o_mainframe_eye)

var i=0
for(i=0; i<array_length(eye); i++)
	{
	//show_message(string(i))
	if(instance_exists(eye[i]))
		{
		eye[i].player_change_timer=(72*i*irandom_range(1, 7)) mod 300
		eye[i].counter=(72*i) mod 360
		eye[i].counter_shoot=(72*i*irandom_range(1, 7)) mod 360
		}
	}

/*
cannon_l=instance_create(x-220, y-32, o_mainframe_cannon)
cannon_r=instance_create(x+180, y+32, o_mainframe_cannon)

with(cannon_r)
	{
	timer_attack=360
	image_xscale=-1
	}
	
cannon_c=instance_create(x, y-100, o_mainframe_cannon_ceiling)
with(cannon_c)
	{
	timer_attack=240
	}
*/