/// @description Insert description here
// You can write your code in this editor

if(player_change_timer>0)
	{
	player_change_timer=player_change_timer-1
	}
else
	{
	player_change_timer=300
	if(player==o_controller.player1)
		{
		if(o_controller.player2!=noone && o_controller.player1!=noone)
			{
			if(o_controller.player2.state!=states.dead)
				{
				player=o_controller.player2
				}
			}
		}
	else if(player==o_controller.player2)
		{
		if(o_controller.player2!=noone && o_controller.player1!=noone)
			{
			if(o_controller.player1.state!=states.dead)
				{
				player=o_controller.player1
				}
			}
		}
	}

if(action==belmont_actions.walk)
	{
	if(phase==1)
		{
		hsp=2*walk_dir
		}
	if(phase==2)
		{
		hsp=3*walk_dir
		}
	}

if(abs(player.x-x)>250 && player.x>x)
	{
	walk_dir=1
	image_xscale=-1
	}
	
if(abs(player.x-x)>250 && player.x<x)
	{
	walk_dir=-1
	image_xscale=1
	}

if(timer_axe>0)
	{
	timer_axe=timer_axe-1
	if(timer_axe==60)
		{
		if(instance_exists(telegraph))
			{
			telegraph.sprite_index=s_richter_axe_forming
			telegraph.image_index=0
			telegraph.image_speed=0.1
			}
		}
	if(timer_axe<=60)
		{
		telegraph.x=x+(10*image_xscale)
		telegraph.y=y-10
		}
	}
else
	{
	telegraph.sprite_index=noone
	if(phase==1)
		{
		timer_axe=360
		}
	else
		{
		timer_axe=540
		}
	with(instance_create(x+10*image_xscale, y-10, o_richter_axe))
		{
		image_xscale=-other.image_xscale
		hsp=(abs(other.hsp)*image_xscale)+image_xscale+image_xscale
		vsp=-7
		}
	}
	
if(timer_cross>0)
	{
	timer_cross=timer_cross-1
	if(timer_cross==60)
		{
		if(instance_exists(telegraph))
			{
			telegraph.sprite_index=s_richter_cross_forming
			telegraph.image_index=0
			telegraph.image_speed=0.1
			}
		}
	if(timer_cross<=60)
		{
		telegraph.x=x
		telegraph.y=y+8
		}
	}
else
	{
	telegraph.sprite_index=noone
	if(phase==1)
		{
		timer_cross=360
		}
	else
		{
		timer_cross=540
		}
	with(instance_create(x, y+8, o_richter_cross))
		{
		image_xscale=-other.image_xscale
		hsp=5*image_xscale
		}
	}

if(phase==2)
	{
	if(timer_diamond>0)
		{
		timer_diamond=timer_diamond-1
		if(timer_diamond==60)
			{
			if(instance_exists(telegraph))
				{
				telegraph.sprite_index=s_richter_fish_forming
				telegraph.image_index=0
				telegraph.image_speed=0.1
				}
			
			}
		if(timer_diamond<=60)
			{
			telegraph.x=x-(15*image_xscale)
			telegraph.y=y-10
			}
		}
	else
		{
		telegraph.sprite_index=noone
		timer_diamond=540
		with(instance_create(x-(15*image_xscale), y-10, o_richter_diamond))
			{
			if(other.image_xscale==1)
				{
				current_dir=225
				}
			else
				{
				current_dir=315
				}
			}
		}
	}
	
	
if(timer_jump>0)
	{
	timer_jump=timer_jump-1
	}
	
if(timer_jump<=60)
	{
	image_speed=0.1
	}
else
	{
	image_speed=0.2
	}
	
if(timer_jump<=0 && action!=belmont_actions.jump)
	{
	//hsp=0
	vsp=-8
	timer_jump=300
	action=belmont_actions.jump
	}

if(vsp<6)
	{
	vsp=vsp+grav
	}

hsp_carry=0

var conv
conv=instance_place(x, y+1, o_floor_conv)

if(conv!=noone)
    {
    hsp_carry=conv.hsp
    }

hsp_final=hsp+hsp_carry

if(place_meeting(x+floor(hsp_final), y, o_floor))
	{
	while(!place_meeting(x+sign(hsp_final), y, o_floor))
		{
		x=x+sign(hsp_final)
		}
	hsp_carry=0
	hsp=0
	hsp_final=0
	walk_dir=walk_dir*-1
	image_xscale=image_xscale*-1
	}

while(place_meeting(x, y, o_floor))
	{
	y=y-1
	}

x=x+hsp_final
x=floor(x)
	
if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	vsp=0
	}
	
	
	
if(place_meeting(x, y+1, o_floor) && vsp>=0)
	{
	hsp=walk_dir
	action=belmont_actions.walk
	}
	
y=y+vsp
y=floor(y)

if(hp<200
&& phase==1)
	{
	phase=2
	timer_axe=120
	timer_cross=240
	timer_diamond=360
	sprite_index=s_richter_headless
	with(instance_create(x, y-20, o_richter_head))
		{
		image_xscale=other.image_xscale
		hsp=2*image_xscale
		vsp=-6
		}
	}

timer_change=timer_change-1

if(instance_exists(o_floor_conv) && timer_change==0)
	{
	with(o_floor_conv)
		{
		instance_change(o_floor_conv_mirrored, false)
		hsp=hsp*-1
		image_speed=image_speed*-1
		}
	}
if(instance_exists(o_floor_conv_mirrored) && timer_change==-600)
	{
	timer_change=600
	with(o_floor_conv_mirrored)
		{
		instance_change(o_floor_conv, false)
		hsp=hsp*-1
		image_speed=image_speed*-1
		}
	}

hp=scr_boss_get_damage(hp)

	
if(hp<=0)
	{
	/*
	with(o_floor_conv)
		{
		instance_change(o_floor, true)
		}
	*/
	//scr_add_score(o_controller.player1, 3000)
	//scr_add_score(o_controller.player2, 3000)
	scr_boss_death(sprite_index, 5, my_next_room)
	
	instance_destroy(o_richter_axe)
	instance_destroy(o_richter_diamond)
	instance_destroy(o_richter_cross)
	}

if(instance_exists(target))
	{
	target.x=x
	target.y=(bbox_top+bbox_bottom)/2
	}
	
if(instance_exists(telegraph))
	{
	telegraph.image_xscale=image_xscale
	}