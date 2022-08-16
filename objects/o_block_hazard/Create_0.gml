hsp=0
vsp=0
push=false
push_hor=false
push_ver=false
hor_push_ds=-1
ver_push_ds=-1
timer=0

hit_timer=0



x=floor(x)
y=floor(y)

colored_red=false

destructible=false

//sprite_tiles[0]=s_floor_alt
//sprite_tiles[1]=s_floor_alt3
//sprite_tiles[2]=s_floor_alt3

//draw_set_alpha(0)

//var sprite_tile=sprite_tiles[irandom_range(0,2)]


hp=30

timer_shoot=180
shooting=true


laser=instance_create_layer(x, y+16, "depth_controller", o_simple_laser,
	{
	sprite_index: s_laser_wide_hor,
	image_xscale: ((500)/(sprite_get_width(s_laser_wide_hor)))*sign(other.image_xscale),
	x: x+(32*sign(image_xscale)),
	image_yscale: 1
	})


