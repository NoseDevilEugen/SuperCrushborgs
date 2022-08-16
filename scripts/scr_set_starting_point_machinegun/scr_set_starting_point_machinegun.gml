function scr_set_starting_point_machinegun(p_action, o_bullet) {

	add_bullet_vsp=0

	set_starting_point_all(p_action)
	
	with(instance_create_layer(start_bullet_x+hsp, start_bullet_y, "Bullets", o_bullet))
		{
		parent=other.id
		hsp=lengthdir_x(bullet_speed, other.bullet_dir)
		//add_hsp=lengthdir_x(other.hsp, other.bullet_dir)
		vsp=lengthdir_y(bullet_speed, other.bullet_dir)
		//add_vsp=lengthdir_y(other.vsp, other.bullet_dir)
		
		add_hsp=floor(other.hsp_final)
		if(sign(other.vsp)==sign(vsp) && other.vsp!=0)
			{
			add_vsp=floor(other.vsp)
			}
		else
			{
			add_vsp=0
			}
		}


}
