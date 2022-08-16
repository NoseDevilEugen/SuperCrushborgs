/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
hsp=0
vsp=0

hit_timer=0

counter=0

timer=0

hp=100

timer_shoot=120

exp_dir=1

y_start=y

off=0

target=instance_create(x, y, o_homing_aim)

var i
for(i=0; i<360; i++)
	{
	dsin_array[i]=dsin(i)
	}