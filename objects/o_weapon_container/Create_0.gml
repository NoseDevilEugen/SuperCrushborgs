/// @description Insert description here
// You can write your code in this editor
//паверап - это один объект. хранит в себе значение подбираемого вепона

sway=false

hsp=0
vsp=0

y_start=ystart

timer=0

//grav=0.5

hp=5

//рандомный вепон при создании
//напиши weapon=weapons.lasergun чтобы изменить оружие в creation code
weapon=irandom_range(0,4)

target=noone
//sprite_index=s_weapon_container_fly
//спрайт для отображения

/*
switch(weapon)
	{
	case weapons.machinegun:
		{
		sprite_index=s_bonus_m
		}
	break
	case weapons.spreadgun:
		{
		sprite_index=s_bonus_s
		}
	break
	
	
	case weapons.energygun:
		{
		sprite_index=s_bonus_e
		}
	break
	
	case weapons.hominggun:
		{
		sprite_index=s_bonus_h
		}
	break
	
	case weapons.lasergun:
		{
		sprite_index=s_bonus_l
		}
	break
	}
*/

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}
