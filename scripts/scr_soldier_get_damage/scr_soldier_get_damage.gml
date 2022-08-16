// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_soldier_get_damage(my_sprite, my_explosion){
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
			_list[|i].parent.exp_charge=_list[|i].parent.exp_charge+0.5
			scr_add_score(_list[|i].parent, 100)
			}
		if(_list[|i].object_index==o_screen_explosion)
			{
			with(o_screen_explosion)
				{
				firepower=firepower-2
				}
			}
        }
	scr_soldier_death(my_sprite, my_explosion)
    }
ds_list_destroy(_list)
}