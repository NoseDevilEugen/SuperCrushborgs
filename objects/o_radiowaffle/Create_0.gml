/// @description Insert description here
// You can write your code in this editor
timer=0
y_start=ystart

hsp=image_xscale
vsp=0

my_rope=instance_place(x, y, o_rope)

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

for(var i=0; i<5; i++)	
	{
	flame_array[i]=instance_create(x, y, o_enemy_flame)
	with(flame_array[i])
		{
		angle=5*(i+2)*(other.image_xscale)
		orbit=10*(i+2)

		}
	}


//hp=99