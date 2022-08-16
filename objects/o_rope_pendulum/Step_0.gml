/// @description Insert description here
// You can write your code in this editor



//x=x+hsp

//y=y+vsp

//xdelta = x-xprevious

//ydelta = y-yprevious
	
if(instance_position(anchor_x, anchor_y, o_floor))
	{
	anchor_x=anchor_x+instance_position(anchor_x, anchor_y, o_floor).hsp
	anchor_y=anchor_y+instance_position(anchor_x, anchor_y, o_floor).vsp
	}

angle_accelerration = -(.05*velocity_dampening) * dcos(angle)
     
angle_velocity += angle_accelerration
angle += angle_velocity
     
//angle_velocity *= velocity_dampening;

var new_x = anchor_x + lengthdir_x(distance, angle)
var new_y = anchor_y + lengthdir_y(distance, angle)

hsp = new_x - x
vsp = new_y - y

hsp=floor(hsp)

vsp=floor(vsp)

if(instance_exists(o_controller.player1))
	{
	scr_rope_moving_block(id, o_controller.player1)
	}
if(instance_exists(o_controller.player2))
	{
	scr_rope_moving_block(id, o_controller.player2)
	}




x=x+hsp
y=y+vsp

x=floor(x)
y=floor(y)


/*
if(place_meeting(x, y, o_wall_boss))
    {
    x=o_camera.screen_left-(bbox_right-bbox_left)
	y=y+irandom_range(-5, 5)
	counter=0
	if(irandom_range(0,1)==0)
		{
		updown=false
		}
	else
		{
		updown=true
		}
    }
	
if(y<=0)
	{
	y=room_height
	}
*/