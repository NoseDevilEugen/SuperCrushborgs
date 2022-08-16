// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_get_damage(hitpoints){
var _list = ds_list_create()
var _num = instance_place_list(x, y, o_parent_bullet, _list, false)
if (_num > 0)
    {
    for (var i = 0; i < _num; i++)
        {
			
		/*
		if(hitpoints-_list[| i].firepower<0)
			{
			scr_add_score(_list[|i].parent, 500)
			}
		*/
		
		add_to=_list[|i].parent
		var hp_prev=hitpoints
		hitpoints=hitpoints-_list[| i].firepower
		//hit_confirm=true
		hit_timer=5
		audio_stop_sound(o_controller.sound_array[10])
		audio_play_sound(o_controller.sound_array[10], 11, false)
		if(id.object_index==o_spider)
			{
			if(instance_exists(hand))
				{
				hand.hit_timer=4
				hand.hp=hand.hp-(_list[| i].firepower/4)
				}
			if(instance_exists(gun))
				{
				gun.hit_timer=4
				gun.hp=gun.hp-(_list[| i].firepower)
				}
			}
			
		if(id.object_index==o_w_boss_head)
			{
			if(instance_exists(handl))
				{
				handl.hit_timer=4
				handl.hp=handl.hp-(_list[| i].firepower/3)
				}
			if(instance_exists(handr))
				{
				handr.hit_timer=4
				handr.hp=handr.hp-(_list[| i].firepower/3)
				}
			}
		

		if(_list[|i].object_index!=o_energygun_explosion
		&& _list[|i].object_index!=o_energygun_explosion_alt
		&& _list[|i].object_index!=o_screen_explosion
		&& _list[|i].object_index!=o_screen_clearing
		&& _list[|i].object_index!=o_energygun_explosion_area
		&& _list[|i].object_index!=o_spreadgun_bullet_alt
		)
			{
			//show_message(object_get_name(_list[|i].object_index))
			if(hp_prev>0)
				{
		        instance_destroy(_list[| i], true)
				with(instance_create(_list[| i].x, _list[| i].y, o_special_fx))
					{
					if(_list[|i].object_index==o_bullet_destroyed)
						{
						sprite_index=_list[| i].sprite_index
						image_index=_list[| i].image_index
						
						}
					else
						{
						image_index=0
						sprite_index=s_machinegun_bullet_destroyed
						}
					}
				_list[|i].parent.exp_charge=_list[|i].parent.exp_charge+0.5
				}
			}
		
			
        }
    }
ds_list_destroy(_list)
return hitpoints
}