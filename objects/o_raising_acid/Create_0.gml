//потолочные и напольные шипы
//чтобы поменять направление, измени yscale

image_index=0
y=o_camera.screen_bottom-48
image_speed=0.075

nearest_gun=instance_nearest(x, y, o_electric_barrier)

hsp=0
vsp=0

push=false
push_hor=false
push_ver=false
hor_push_ds=-1
ver_push_ds=-1
timer=0

/*
for(var i=0; i<abs(image_xscale); i++)
	{
	xx[i]=x+((i*(sprite_get_width(sprite_index))))*sign(image_xscale)
	}
	
for(var j=0; j<abs(image_yscale); j++)
	{
	yy[j]=y+((j*(sprite_get_height(sprite_index))))*sign(image_yscale)
	}
*/


x=floor(x)
y=floor(y)

//y=y+sprite_height/2
//image_yscale=-1

//mask_index=s_acid

//show_message(y)
//show_message(bbox_top)