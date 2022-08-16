/// @description Insert description here
// You can write your code in this editor

bullet_speed=4

exp_dir=irandom_range(0,1)

if(exp_dir==0)
	{
	sprite_index=s_energygun_bullet_idle
	explosion_dir[0]=0
	explosion_dir[1]=180
	explosion_dir[2]=90
	explosion_dir[3]=270
	}
else
	{
	sprite_index=s_joe_richoshet
	explosion_dir[0]=315
	explosion_dir[1]=45
	explosion_dir[2]=135
	explosion_dir[3]=225
	}


firepower=5

hsp=0
vsp=0
//sprite_index=s_energygun_bullet_idle
image_speed=0.5