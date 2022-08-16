function floor_ver_step() {
	
	
	
	push_hor=false
	push_ver=false

	x=floor(x)
	y=floor(y)


	if(timer<60)
	    {
	    timer=timer+1
	    }

	if(timer>=60)
	    {
	    save_vsp=vsp
	    vsp=0
	    vsp=save_vsp*-1
	    timer=0
	    }
	
	
	var player_wall
	if(instance_place(x+1, y, o_controller.player1))
	    {
		player_wall=instance_place(x+1, y, o_controller.player1)
		if(player_wall.state==states.wallcling)
			{
			player_wall.y=player_wall.y+vsp
			}
		}
	if(instance_place(x-1, y, o_controller.player1))
		{
		player_wall=instance_place(x-1, y, o_controller.player1)
		if(player_wall.state==states.wallcling)
			{
			player_wall.y=player_wall.y+vsp
			}
		}
	
	if(instance_exists(o_controller.player2))
		{
		var player_wall2
		if(instance_place(x+1, y, o_controller.player2))
		    {
			player_wall2=instance_place(x+1, y, o_controller.player2)
			if(player_wall2.state==states.wallcling)
				{
				player_wall2.y=player_wall2.y+vsp
				}
			}
		if(instance_place(x-1, y, o_controller.player2))
			{
			player_wall2=instance_place(x-1, y, o_controller.player2)
			if(player_wall2.state==states.wallcling)
				{
				player_wall2.y=player_wall2.y+vsp
				}
			}
		}
    
	x+=hsp    
	//vertical collision
	if(place_meeting(x, y+vsp, o_floor))
	    {
	    while(!place_meeting(x, y+sign(vsp), o_floor))
	        {
	        y+=sign(vsp)
	        y=floor(y)
	        }
	    //vsp=0
	    }

	//player ceiling cling
	var player_ceiling=instance_place(x, y+1, o_controller.player1)
	if(player_ceiling!=noone)
		{
		if(player_ceiling.state==states.ceiling)
			{
			player_ceiling.y=player_ceiling.y+vsp
			}
		}
	var player_ceiling2=instance_place(x, y+1, o_controller.player2)
	if(player_ceiling2!=noone)
		{
		if(player_ceiling2.state==states.ceiling)
			{
			player_ceiling2.y=player_ceiling2.y+vsp
			}
		}
		
	var alien_ceiling=instance_place_list_custom(x, y+1, o_jumping_alien)
	if(ds_exists(alien_ceiling, ds_type_list))
		{
		for(i=0; i<ds_list_size(alien_ceiling); i++)
	        {
	        with(ds_list_find_value(alien_ceiling, i))
	            {
				if(enemy_action==jumper.ground)
					{
					y=y+other.vsp
					}
				}
			}
		}
	if(ds_exists(alien_ceiling, ds_type_list))
	    {
	    ds_list_destroy(alien_ceiling) 
	    }
	//Pixel-precise collision with objects

	var push_ds=instance_place_list_custom(x, y+floor(vsp), all)
	if(ds_exists(push_ds, ds_type_list))
	    {
	    for(i=0; i<ds_list_size(push_ds); i++)
	        {
	        with(ds_list_find_value(push_ds, i))
	            {
	            if(bbox_top>other.bbox_bottom && other.object_index!=o_player
				&& other.object_index!=o_player_alt
				&& object_index!=o_grenade_small
				&& object_index!=o_machinegun_bullet
				&& object_index!=o_screen_explosion
				&& object_index!=o_lasergun_bullet
				&& object_index!=o_spreadgun_bullet
				&& object_index!=o_energygun_bullet
				&& object_index!=o_energygun_explosion
				&& object_index!=o_hominggun_bullet
				&& object_index!=o_machinegun_bullet_alt
				&& object_index!=o_lasergun_bullet_alt
				&& object_index!=o_spreadgun_bullet_alt
				&& object_index!=o_energygun_bullet_alt
				&& object_index!=o_energygun_explosion_alt
				&& object_index!=o_hominggun_bullet_alt
				&& object_index!=o_player_skelet
				&& object_index!=o_enemy_dead
				&& object_index!=o_explosion
				&& object_index!=o_bullet_destroyed
				&& object_index!=o_hole_spawner_bullet
				&& object_index!=o_flying_spawner
				&& object_index!=o_wall_heli_exp
				&& object_index!=o_boss_dead
				&& object_index!=o_weapon_container
				&& object_index!=o_weapon_container_fly
				&& object_index!=o_joe_spreadgun_bullet
				&& object_index!=o_spike_celling
				&& object_index!=o_spike_wall
				&& object_index!=o_laser_hazard_vertical_down
				&& object_index!=o_laser_hazard_horizontal_left
				&& object_index!=o_small_pendulum
				&& object_index!=o_enemy_pendulum
				&& object_index!=o_hole_spawner
				&& object_index!=o_special_fx
				&& object_index!=o_rope
				&& object_index!=o_rope_moving
				&& object_index!=o_rope_pendulum
				&& object_index!=o_hazard)          
	                {
	                vsp=other.vsp
	                y=floor(y+other.vsp+1)
	                y=floor(y)
	                }
	            if(bbox_bottom<other.bbox_top 
				&& !place_meeting(other.x, other.y-1, id)
				&& object_index!=o_grenade_small
				&& object_index!=o_machinegun_bullet
				&& object_index!=o_lasergun_bullet
				&& object_index!=o_spreadgun_bullet
				&& object_index!=o_energygun_bullet
				&& object_index!=o_energygun_explosion
				&& object_index!=o_screen_explosion
				&& object_index!=o_hominggun_bullet
				&& object_index!=o_machinegun_bullet_alt
				&& object_index!=o_lasergun_bullet_alt
				&& object_index!=o_spreadgun_bullet_alt
				&& object_index!=o_energygun_bullet_alt
				&& object_index!=o_energygun_explosion_alt
				&& object_index!=o_hominggun_bullet_alt
				&& object_index!=o_player_skelet
				&& object_index!=o_enemy_dead
				&& object_index!=o_explosion
				&& object_index!=o_bullet_destroyed
				&& object_index!=o_hole_spawner_bullet
				&& object_index!=o_flying_spawner
				&& object_index!=o_wall_heli_exp
				&& object_index!=o_boss_dead
				&& object_index!=o_weapon_container
				&& object_index!=o_weapon_container_fly
				&& object_index!=o_joe_spreadgun_bullet
				&& object_index!=o_spike_celling
				&& object_index!=o_spike_wall
				&& object_index!=o_laser_hazard_vertical_down
				&& object_index!=o_laser_hazard_horizontal_left
				&& object_index!=o_small_pendulum
				&& object_index!=o_enemy_pendulum
				&& object_index!=o_hole_spawner
				&& object_index!=o_special_fx
				&& object_index!=o_rope
				&& object_index!=o_rope_moving
				&& object_index!=o_rope_pendulum
				&& object_index!=o_hazard)
	                {
	                y=(other.y-(bbox_bottom_offset+other.bbox_top_offset+1))
					y=floor(y)
	                } 
	            }
	        }
	    }     
	if(ds_exists(push_ds, ds_type_list))
	    {
	    ds_list_destroy(push_ds) 
	    }
	

        
	//vertical collision for humanoids
	var carry_ds=instance_place_list_custom(x, y-1, all)
	if(ds_exists(carry_ds, ds_type_list))
	    {
	    for(i=0; i<ds_list_size(carry_ds); i++)
	        {
	        with(ds_list_find_value(carry_ds, i))
	            {
				if(object_index!=o_machinegun_bullet
				&& object_index!=o_screen_explosion
				&& object_index!=o_lasergun_bullet
				&& object_index!=o_spreadgun_bullet
				&& object_index!=o_energygun_bullet
				&& object_index!=o_energygun_explosion
				&& object_index!=o_hominggun_bullet
				&& object_index!=o_machinegun_bullet_alt
				&& object_index!=o_lasergun_bullet_alt
				&& object_index!=o_spreadgun_bullet_alt
				&& object_index!=o_energygun_bullet_alt
				&& object_index!=o_energygun_explosion_alt
				&& object_index!=o_hominggun_bullet_alt
				&& object_index!=o_grenade_small
				&& object_index!=o_player_skelet
				&& object_index!=o_enemy_dead
				&& object_index!=o_boss_dead
				&& object_index!=o_explosion
				&& object_index!=o_bullet_destroyed
				&& object_index!=o_hole_spawner_bullet
				&& object_index!=o_weapon_container
				&& object_index!=o_weapon_container_fly
				&& object_index!=o_joe_spreadgun_bullet
				&& object_index!=o_spike_celling
				&& object_index!=o_spike_wall
				&& object_index!=o_laser_hazard_vertical_down
				&& object_index!=o_laser_hazard_horizontal_left
				&& object_index!=o_small_pendulum
				&& object_index!=o_enemy_pendulum
				&& object_index!=o_hole_spawner
				&& object_index!=o_flying_spawner
				&& object_index!=o_wall_heli_exp
				&& object_index!=o_special_fx
				&& object_index!=o_rope
				&& object_index!=o_rope_moving
				&& object_index!=o_rope_pendulum
				&& object_index!=o_hazard)
					{
		            if(pushed_ver==false)
		                {
		                if(place_meeting(x, y+1, o_floor_moving_ver))
		                    {
			                if(other.vsp<0)
			                    {
			                    y=floor(y+floor(other.vsp))
			                    y=floor(y)
			                    pushed_ver=true
			                    }
			                if(other.vsp>0)
			                    {
								if(object_index==o_player || object_index==o_player_alt)
									{
									if(primary_action==primary_actions.knockback && image_index>1)
										{
										primary_action=primary_actions.destroyed
										}
									}
			                    vsp=other.vsp
			                    y=floor(y)
			                    pushed_ver=true
			                    }
							}
						}
	                }
	            }
	        }
	    }     
	if(ds_exists(carry_ds, ds_type_list))
	    {
	    ds_list_destroy(carry_ds) 
	    }
	/*    
	//humanoids is under pressure
	var push2_ds=instance_place_list_custom(x, y+1, o_humanoid)
	if(ds_exists(push2_ds, ds_type_list))
	    {
	    for(i=0; i<ds_list_size(push2_ds); i++)
	        {
	        with(ds_list_find_value(push2_ds, i))
	            {
	            vsp=1
	            }
	        }
	    }     
	if(ds_exists(push2_ds, ds_type_list))
	    {
	    ds_list_destroy(push2_ds) 
	    }
	*/
            
	y+=vsp
	y=floor(y)

        
	var push3_ds=instance_place_list_custom(x, y+1, all)
	if(ds_exists(push3_ds, ds_type_list))
	    {
	    for(i=0; i<ds_list_size(push3_ds); i++)
	        {
	        with(ds_list_find_value(push3_ds, i))
	            {
				if(object_index!=o_player
				&& object_index!=o_player_alt
				&& object_index!=o_jumping_alien
				&& object_index!=o_machinegun_bullet
				&& object_index!=o_screen_explosion
				&& object_index!=o_lasergun_bullet
				&& object_index!=o_spreadgun_bullet
				&& object_index!=o_energygun_bullet
				&& object_index!=o_energygun_explosion
				&& object_index!=o_hominggun_bullet
				&& object_index!=o_machinegun_bullet_alt
				&& object_index!=o_lasergun_bullet_alt
				&& object_index!=o_spreadgun_bullet_alt
				&& object_index!=o_energygun_bullet_alt
				&& object_index!=o_energygun_explosion_alt
				&& object_index!=o_hominggun_bullet_alt
				&& object_index!=o_player_skelet
				&& object_index!=o_enemy_dead
				&& object_index!=o_explosion
				&& object_index!=o_bullet_destroyed
				&& object_index!=o_hole_spawner_bullet
				&& object_index!=o_flying_spawner
				&& object_index!=o_wall_heli_exp
				&& object_index!=o_boss_dead
				&& object_index!=o_weapon_container
				&& object_index!=o_weapon_container_fly
				&& object_index!=o_joe_spreadgun_bullet
				&& object_index!=o_spike_celling
				&& object_index!=o_spike_wall
				&& object_index!=o_laser_hazard_vertical_down
				&& object_index!=o_laser_hazard_horizontal_left
				&& object_index!=o_small_pendulum
				&& object_index!=o_enemy_pendulum
				&& object_index!=o_hole_spawner
				&& object_index!=o_special_fx
				&& object_index!=o_rope
				&& object_index!=o_rope_moving
				&& object_index!=o_rope_pendulum
				&& object_index!=o_grenade_small
				&& object_index!=o_hazard)
					{
		            y=y+abs(other.vsp)+1
		            y=floor(y)
					}
	            }
	        }
	    }     
	if(ds_exists(push3_ds, ds_type_list))
	    {
	    ds_list_destroy(push3_ds) 
	    }        

	x=floor(x)
	y=floor(y)



}
