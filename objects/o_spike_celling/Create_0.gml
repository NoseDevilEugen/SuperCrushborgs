//потолочные и напольные шипы
//чтобы поменять направление, измени yscale

hsp=0
vsp=0

push=false
push_hor=false
push_ver=false
hor_push_ds=-1
ver_push_ds=-1
timer=0

image_speed=0.2

x=floor(x)
y=floor(y)

//y=y+sprite_height/2
//image_yscale=-1

my_haz=instance_create(x, y, o_hazard)

with(my_haz)
	{
	sprite_index=other.sprite_index
	image_xscale=other.image_xscale
	image_yscale=other.image_yscale
	mask_index=other.mask_index
	}