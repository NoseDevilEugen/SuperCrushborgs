function scr_soldier_death(sprite_dead, sprite_explosion) {
	if(instance_exists(target))
		{
		instance_destroy(target)
		}
	with(instance_create(x, y, o_enemy_dead))
		{
		sprite_index=sprite_dead
		spr_exp=sprite_explosion
		hit_timer=other.hit_timer
		image_xscale=other.image_xscale
		image_yscale=other.image_yscale
		image_index=0
		vsp=-4
		}
	instance_destroy(id)
}