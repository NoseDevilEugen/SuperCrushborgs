/// @description Insert description here
// You can write your code in this editor


//sprite_index=s_machinegun_bullet_idle


if(exp_dir==1)
	{
	sprite_index=s_energygun_bullet_idle
	explosion_dir[0]=0
	explosion_dir[1]=180
	explosion_dir[2]=90
	explosion_dir[3]=270
	}
if(exp_dir==-1)
	{
	sprite_index=s_joe_richoshet
	explosion_dir[0]=315
	explosion_dir[1]=45
	explosion_dir[2]=135
	explosion_dir[3]=225
	}


timer_exp=timer_exp-1
	
if(timer_exp<=0)
	{
	instance_destroy(id)
	}	


x=x+hsp
	
y=y+vsp

scr_destroy_projectile()