/// @description Insert description here
// You can write your code in this editor
orbit=64
angle1=0
angle2=180
wheel_dir=-1


with(instance_create(x, y, o_rope_moving))
	{
	angle=other.angle1
	wheel_rotation=-other.image_xscale
	
	wheel=true

	wheel_x=other.x
	wheel_y=other.y
	}
	
with(instance_create(x, y, o_rope_moving))
	{
	angle=other.angle2
	wheel_rotation=-other.image_xscale
	wheel=true
	wheel_x=other.x
	wheel_y=other.y
	}
	
if(image_xscale==-1)
	{
	image_xscale=1
	}