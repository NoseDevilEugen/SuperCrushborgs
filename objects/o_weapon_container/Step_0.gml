/// @description Insert description here
// You can write your code in this editor

//контейнер летит


hp=scr_boss_get_damage(hp)

if(hp<0)
	{
	with(instance_create(x, y, o_weapon_powerup))
		{
		weapon=other.weapon
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
		vsp=-4
		hsp=sign(other.x-o_controller.player.x)*1
		}
		scr_boss_death(sprite_index, 1, noone)
	}


//попадание пули
/*
var _list = ds_list_create()
var _num = instance_place_list(x, y, o_parent_bullet, _list, false)
if (_num > 0)
    {
    for (var i = 0; i < _num; i++)
        {
		if(_list[|i].object_index!=o_energygun_explosion)
			{
			//show_message(object_get_name(_list[|i].object_index))
	        instance_destroy(_list[| i], true)
			}
		if(hp>0)
			{
			hp=hp-_list[| i].firepower
			}
        }
	if(hp<0)
		{
		//генерация бонуса
		with(instance_create(x, y, o_weapon_powerup))
			{
			weapon=other.weapon
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
			vsp=-4
			hsp=sign(other.x-o_controller.player.x)*1
			}
		instance_destroy(id)
		}
    }
ds_list_destroy(_list)
*/