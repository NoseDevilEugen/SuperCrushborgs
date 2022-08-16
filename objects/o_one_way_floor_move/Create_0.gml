x=floor(x)
y=floor(y)

y_start=ystart

box_height=0

destructible=false

hsp=0
vsp=0

timer=0

//draw_set_alpha(0)

/*
rope=instance_create_layer(x, y, "depth_blocks", o_rope_inside_plane)
with(rope)
	{
	//visible=false
	image_xscale=other.image_xscale
	image_yscale=other.image_yscale
	}
*/


var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}