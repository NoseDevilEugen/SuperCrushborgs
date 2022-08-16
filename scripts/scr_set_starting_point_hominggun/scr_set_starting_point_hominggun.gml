function scr_set_starting_point_hominggun(p_action, o_bullet) {

	add_bullet_vsp=0
	
	set_starting_point_all(p_action)
	
	with(instance_create_layer(start_bullet_x+hsp, start_bullet_y, "Bullets", o_bullet))
		{
		parent=other.id
		image_angle=other.bullet_dir
		hsp=lengthdir_x(bullet_speed, other.bullet_dir)
		vsp=lengthdir_y(bullet_speed, other.bullet_dir)
		add_hsp=floor(other.hsp_final)
		add_vsp=floor(other.vsp)
		}


}
