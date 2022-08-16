function scr_set_starting_point_lasergun(p_action, o_bullet) {

	add_bullet_vsp=0

	set_starting_point_all(p_action)
	
	if(object_index==o_player)
		{
		with(instance_create_layer(start_bullet_x+hsp_final, start_bullet_y, "Bullets", o_bullet))
			{
			parent=other.id
			bullet_dir=other.bullet_dir
			}
		}
	else
		{
		with(instance_create_layer(start_bullet_x+hsp_final, start_bullet_y, "Bullets", o_bullet))
			{
			parent=other.id
			scale=other.image_xscale
			bullet_dir=other.bullet_dir
			}
		}


}
