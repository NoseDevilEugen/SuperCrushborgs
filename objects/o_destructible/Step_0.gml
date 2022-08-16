/// @description Insert description here
// You can write your code in this editor



hp=scr_boss_get_damage(hp)
	
if(hp<=0)
	{
	/*
	var i
	for(i=0; i<8; i++)
		{
		with(instance_create_layer(x+hsp, y+vsp, "Bullets", o_energygun_explosion))
			{
			timer=other.timer
			firepower=other.firepower
			parent=noone
			hsp=lengthdir_x(5, other.explosion_dir[i])
			vsp=lengthdir_y(5, other.explosion_dir[i])
			}
		}
	*/
	//audio_play_sound(o_controller.sound_array[12], 11, false)
	instance_destroy(id)
	//scr_boss_death(sprite_index, 1, noone)
	if(instance_exists(target))
		{
		target.x=x
		target.y=y
		}
	}
	
	

	
//sprite_index=s_array[action]