/// @description Insert description here
// You can write your code in this editor

counter=(counter+3) mod 360

//контейнер летит
x=x+hsp
x=floor(x)

vsp = (ystart + dsin(counter)*30)-yprevious


y=y+vsp
y=floor(y)


//попадание пули
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
        }
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
		}
	instance_destroy(id)
    }
ds_list_destroy(_list)

if(x<o_camera.screen_left-128
|| x>o_camera.screen_right+128
|| y<o_camera.screen_top-128
|| y>o_camera.screen_bottom+128)
	{
	instance_destroy(id, false)
	}