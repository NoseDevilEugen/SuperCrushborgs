// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_death(spr_dead, expl_count, room_to_go){
	
	if(instance_exists(target))
		{
		instance_destroy(target)
		}
	
	with(instance_create(x, y, o_boss_dead))
		{
		boss_obj=other.object_index
		my_next_room=room_to_go
		sprite_index=spr_dead
		image_index=other.image_index
		image_xscale=other.image_xscale
		image_yscale=other.image_yscale
		image_speed=0
		exp_number=expl_count
		}
	instance_destroy(id)
}