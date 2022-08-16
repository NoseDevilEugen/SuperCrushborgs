/// @description Insert description here
// You can write your code in this editor
if(stepped==false)
	{
	if((collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, o_player, false, false)!=noone
	&& collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, o_player, false, false)!=instance_place(x, y, o_player))
	|| (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, o_player_alt, false, false)!=noone
	&& collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, o_player_alt, false, false)!=instance_place(x, y, o_player_alt)))
		{
		stepped=true
		}
	}
	
if(stepped==true)
	{
	timer=timer-1
	}

if(timer>=80)
	{
	image_index=0
	}
else if(timer>=60)
	{
	image_index=1
	}
else if(timer>=40)
	{
	image_index=2
	}
else if(timer>=20)
	{
	image_index=3
	}

if(timer<=0)
	{
	instance_change(o_empty_block, true)
	}