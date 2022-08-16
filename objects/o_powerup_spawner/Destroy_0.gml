/// @description Insert description here
// You can write your code in this editor


if(left1!=noone)
	{
	var l1=instance_create( o_camera.screen_left,  o_camera.screen_top+128, o_weapon_container_fly)
	with(l1)	
		{
		hsp=3
		weapon=other.left1
		}
	}
if(left2!=noone)
	{
	var l2=instance_create( o_camera.screen_left-32,  o_camera.screen_top+160, o_weapon_container_fly)
	with(l2)	
		{
		counter=120
		hsp=3
		weapon=other.left2
		}
	}
	
if(right1!=noone)
	{
	var r1=instance_create(o_camera.screen_right,  o_camera.screen_top+128, o_weapon_container_fly)
	with(r1)	
		{
		hsp=-2
		weapon=other.right1
		}
	}
if(right2!=noone)
	{
	var r2=instance_create(o_camera.screen_right+32,  o_camera.screen_top+160, o_weapon_container_fly)
	with(r2)	
		{
		counter=120
		hsp=-2
		weapon=other.right2
		}
	}