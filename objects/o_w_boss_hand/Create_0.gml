/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
start_x=x
start_y=y


add_score=300
add_to=noone

change=false



hit_timer=0

expand=true


counter_hsp=0
counter_vsp=0
counter=0


val1=0
val2=0

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}

val1=0
val2=0

//length=10

hsp=0
vsp=0

hp=100

target=instance_create(x, y, o_homing_aim)

dir=image_xscale