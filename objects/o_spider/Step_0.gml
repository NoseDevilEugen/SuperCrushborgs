/// @description Insert description here
// You can write your code in this editor


if(player_change_timer>0)
	{
	player_change_timer=player_change_timer-1
	}
else
	{
	if(spider_action!=spider_actions.hand_attack)
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
	}

if(instance_exists(target))
	{
	if(spider_action!=spider_actions.destroyed)
		{
		target.x=x
		target.y=y
		}
	else
		{
		instance_destroy(target)
		}
	}


if(abs(player.x-x)>100 && player.x>x
&& spider_action==spider_actions.idle)
	{
	image_xscale=1
	}
	

if(spider_action==spider_actions.idle)
	{
	if(sign(x-player.x)!=0 && timer_shoot==9)
		{
		image_xscale=-sign(x-player.x)
		}
	}
	

//timer_shoot=timer_shoot-1

if(
(timer_shoot==0)
&& instance_exists(gun)
&& spider_action==spider_actions.idle)
	{
	//timer_shoot=-1
	starting_x=x+(image_xscale*40)
	starting_y=y-(image_yscale*24)
	if(timer_shoot==0)
		{
		with(instance_create(starting_x, starting_y, o_joe_spreadgun_bullet))
			{
			sprite_index=s_enemy_bullet_small2
			hsp=3*other.image_xscale
			vsp=0
			}
		with(instance_create(starting_x, starting_y, o_joe_spreadgun_bullet))
			{
			sprite_index=s_enemy_bullet_small2
			hsp=3*other.image_xscale
			vsp=-1*other.image_yscale
			}
		with(instance_create(starting_x, starting_y, o_joe_spreadgun_bullet))
			{
			sprite_index=s_enemy_bullet_small2
			hsp=3*other.image_xscale
			vsp=1*other.image_yscale
			}
		}
	}

if(spider_action==spider_actions.idle)
	{
	if(timer_shoot>=0)
		{
		timer_shoot=timer_shoot-1
		}
	if(sprite_index==s_spider_idle
	&& image_index>=image_number-image_speed)
		{
		image_index=image_number-0.5
		}
		
	if(sprite_index==s_spider_idle_gates
	&& image_index>=image_number-image_speed)
		{
		sprite_index=s_spider_idle
		image_index=image_number-0.5
		}
	
	//hsp=0
	if(timer_jump>0)
		{
		timer_jump=timer_jump-1
		if(timer_jump<=9 && sprite_index!=s_spider_jump)
			{
			image_index=0
			sprite_index=s_spider_jump
			}
		}
	
	else
		{
		if(instance_exists(gun))
			{
			timer_jump=60
			}
		else
			{
			timer_jump=40
			}
		vsp=-7*sign(grav)
		if(instance_exists(gun))
			{
			hsp=image_xscale*(movespeed)
			}
		else
			{
			hsp=image_xscale*(movespeed+2)
			}
		//image_index=0
		//sprite_index=s_spider_idle
		jumps=jumps+1
		spider_action=spider_actions.jump
		}
	}
	


if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	hsp=0
	//image_xscale=image_xscale*-1
	}
	
x=hsp+x	
x=floor(x)

if((vsp<9 && grav>0)
|| (vsp>-9 && grav<0))
	{
	vsp=vsp+grav
	}
	

if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	vsp=0
	}
	
y=vsp+y	
y=floor(y)

if(spider_action==spider_actions.idle
&& !instance_exists(gun)
&& instance_exists(hand))
	{
	if(timer_hand>0)
		{
		timer_hand=timer_hand-1
		}
	else
		{
		timer_hand=40
		if(image_xscale==sign(player.x-x))
			{
			spider_action=spider_actions.hand_attack
			with(hand)
				{
				action=hand_actions.toss
				hsp=2*other.image_xscale
				vsp=-8*other.image_yscale
				}
			}
		}
	}

if(instance_exists(hand))
	{
	if(hand.action==hand_actions.back)
		{
		if(place_meeting(x, y, hand))
			{
			hand.action=hand_actions.idle
			hand.image_angle=0
			spider_action=spider_actions.idle
			}
		}
	}

if(spider_action==spider_actions.hand_attack
&& !instance_exists(hand))
	{
	spider_action=spider_actions.idle	
	}
	
if(spider_action==spider_actions.jump)
	{
	hsp=image_xscale*movespeed
	
	if(image_index>=image_number-image_speed)
		{
		image_index=image_number-0.5
		}
		
	if(place_meeting(x, y+sign(grav), o_floor))
		{
		timer_shoot=20
		hsp=0
		image_index=0
		if(instance_exists(gun))
			{
			sprite_index=s_spider_idle
			}
		else
			{
			sprite_index=s_spider_idle_gates
			}
		image_index=0
		spider_action=spider_actions.idle
		}
	if(ceiling==true
	&& vsp<1 
	&& vsp>-1)
		{
		ceiling=false
		image_yscale=image_yscale*-1
		vsp=0
		grav=grav*-1
		}
	}	
	
if(ceiling==false
&& jumps>6)
	{
	jumps=irandom_range(1, 4)
	ceiling=true
	}
	
hp=scr_boss_get_damage(hp)
	
if(hp<=0)
	{
	if(instance_exists(hand))
		{
		instance_destroy(hand)
		}
	if(instance_exists(gun))
		{
		instance_destroy(gun)
		}
	scr_boss_death(sprite_index, 5, my_next_room)
	}

if(sprite_index==s_spider_idle_gates)
	{
	if(image_index==4.8)
		{
		if(!instance_exists(gun))
			{		
			//sprite_index=s_spider_idle_gates
			//image_index=0
			with(instance_create(x-(14*image_xscale), y-30*image_yscale, o_spider_bomb))
				{
				sprite_index=s_spider_grenade
				image_yscale=-other.image_yscale
				grav=-other.grav
				}
			}
		}
	}

if(instance_exists(hand)
&& spider_action!=spider_actions.hand_attack)
	{
	if(sprite_index==s_spider_jump
	&& image_index>=2)
		{
		hand.y=y+(4*image_yscale)
		}
	else
		{
		hand.y=y+(12*image_yscale)
		}
	hand.x=x+(23*image_xscale)
	//hand.y=y+(12*image_yscale)
	hand.image_yscale=image_yscale
	hand.image_xscale=image_xscale
	}

if(instance_exists(gun))
	{
	if(sprite_index==s_spider_jump
	&& image_index>=2)
		{
		gun.y=y-(29*image_yscale)
		}
	else
		{
		gun.y=y-(21*image_yscale)
		}
	gun.x=x+(28*image_xscale)
	//gun.y=y-(21*image_yscale)
	gun.image_yscale=image_yscale
	gun.image_xscale=image_xscale
	}

if(spider_action==spider_actions.hand_attack)
	{
	if(sprite_index==s_spider_jump)
		{
		sprite_index=s_spider_idle
		}	
		
	if(sprite_index==s_spider_idle
	&& image_index>=image_number-image_speed)
		{
		image_index=image_number-0.5
		}
		
	if(sprite_index==s_spider_idle_gates
	&& image_index>=image_number-image_speed)
		{
		image_index=image_number-0.5
		}
	}

//sprite_index=sprite_array[spider_action]

if(movespeed==1)
	{
	movespeed=2
	}
else if(movespeed==2)
	{
	movespeed=1
	}