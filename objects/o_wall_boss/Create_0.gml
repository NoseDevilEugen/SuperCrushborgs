/// @description Insert description here
// You can write your code in this editor
my_next_room=room_area_phantom_boss
image_xscale=3
image_yscale=9

y_start=ystart

hsp=0
vsp=0

timer=0

target=noone
cannon1=instance_create(x+16, y+48, o_wall_cannon)
cannon2=instance_create(x+16, y+104, o_wall_cannon)
cannon3=instance_create(x+16, y+168, o_wall_cannon)
cannon4=instance_create(x+16, y+224, o_wall_cannon)
with(cannon1)
	{
	timer_shoot=180
	}
with(cannon2)
	{
	timer_shoot=360
	}
with(cannon3)
	{
	timer_shoot=90
	}
with(cannon4)
	{
	timer_shoot=270
	}
eye1=instance_create(x+16, y+128, o_wall_eye)
with(eye1)
	{
	off=-6
	timer_shoot=120
	instance_deactivate_object(id.target)
	}
instance_deactivate_object(eye1)
eye2=instance_create(x+48, y+128, o_wall_eye)
with(eye2)
	{
	off=6
	exp_dir=-1
	timer_shoot=60
	instance_deactivate_object(id.target)
	}
instance_deactivate_object(eye2)

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}