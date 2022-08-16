/// @description Insert description here
// You can write your code in this editor
timer=0
y_start=ystart
var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}



add_score=30
add_to=noone
hit_timer=0

target=noone

field=instance_create(x, y, o_blackhole_field)
with(field)
	{
	sprite_index=s_blackhole_field
	visible=false
	my_parent=other.id
	}
hp=99