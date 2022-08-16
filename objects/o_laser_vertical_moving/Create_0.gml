hsp=0
vsp=0
push=false
push_hor=false
push_ver=false
hor_push_ds=-1
ver_push_ds=-1
timer=0

hit_timer=0

charge_index=-1


x=floor(x)
y=floor(y)

colored_red=false

destructible=false

//sprite_tiles[0]=s_floor_alt
//sprite_tiles[1]=s_floor_alt3
//sprite_tiles[2]=s_floor_alt3

//draw_set_alpha(0)

//var sprite_tile=sprite_tiles[irandom_range(0,2)]

hsp=0

hp=30

timer_shoot=180
shooting=true

charging=noone

target=instance_create(x, y, o_homing_aim)

laser=instance_create_layer(x+16, y, "depth_controller", o_simple_laser,
	{
	sprite_index: s_laser_wide_ver,
	image_xscale: 1,
	image_yscale: ((400)/(sprite_get_height(s_laser_wide_ver)))*-sign(other.image_yscale),
	y: y
	})

fn_on_destroy=function()
	{
	
	}
