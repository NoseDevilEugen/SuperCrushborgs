/// @description Insert description here
// You can write your code in this editor

my_next_room=noone
player=o_controller.player1

image_speed=0.2

horizontal=false


exp_dir=1

timer_attack=90

counter=0

off=40

hsp=0

//y=y+1

amp=50

start_hsp=1

var i
for(i=0; i<360; i++)
	{
	dsin_array[i]=dsin(i)
	}

vsp=0

hit_timer=0
hp=20

target=instance_create(x, y, o_homing_aim)
