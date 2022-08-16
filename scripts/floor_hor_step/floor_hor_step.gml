function floor_hor_step() {
	push_hor=false
	push_ver=false


	if(timer<150)
	    {
	    timer=timer+1
	    }

	if(timer>=150)
	    {
	    timer=0
	    hsp=hsp*-1
	    }

	if(place_meeting(x+(60*sign(hsp))+sign(hsp), y, o_floor))
	    {
	    while(!place_meeting(x+(60*sign(hsp))+sign(hsp), y, o_floor))
	        {
	        x+=sign(hsp)
	        }
	    //hsp=hsp*-1
	    }
    
               
	//push humanoids
	var push_ds=instance_place_list_custom(x+hsp, y, all)
	if(ds_exists(push_ds, ds_type_list))
	    {
	    for(i=0; i<ds_list_size(push_ds); i++)
	        {
	        with(ds_list_find_value(push_ds, i))
	            {
	            if(!place_meeting(other.x+sign(other.hsp), other.y, id)
				&& object_index!=o_machinegun_bullet
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
				&& object_index!=o_hole_spawner
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
				&& object_index!=o_special_fx
				&& object_index!=o_rope
				&& object_index!=o_rope_moving
				&& object_index!=o_rope_pendulum
				&& object_index!=o_grenade_small
				&& object_index!=o_screen_explosion
				)
	                {
	                if(x>other.x)
	                    {
	                    x=(other.x+(bbox_left_offset+other.bbox_right_offset+1))
	                    }
	                if(x<other.x)
	                    {
	                    x=(other.x-(bbox_right_offset+other.bbox_left_offset+1))
	                    } 
	                }
	            }
	        }
	    }     
	if(ds_exists(push_ds, ds_type_list))
	    {
	    ds_list_destroy(push_ds) 
	    } 
   
	var player_wall=instance_place(x-sign(hsp), y, o_controller.player1)
	if(player_wall!=noone)
		{
		if(player_wall.state==states.wallcling)
			{
			player_wall.pushed=push
			player_wall.hsp_carry=hsp
			}
		}
		
	if(instance_exists(o_controller.player2))
		{
		var player_wall2=instance_place(x-sign(hsp), y, o_controller.player2)
		if(player_wall2!=noone)
			{
			if(player_wall2.state==states.wallcling)
				{
				player_wall2.pushed=push
				player_wall2.hsp_carry=hsp
				}
			}
		}
    
	var push2_ds=instance_place_list_custom(x+sign(hsp), y, all)
	if(ds_exists(push2_ds, ds_type_list))
	    {
	    for(i=0; i<ds_list_size(push2_ds); i++)
	        {
	        with(ds_list_find_value(push_ds, i))
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
				&& object_index!=o_player_skelet
				&& object_index!=o_enemy_dead
				&& object_index!=o_explosion
				&& object_index!=o_bullet_destroyed
				&& object_index!=o_hole_spawner_bullet
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
				&& object_index!=o_flying_spawner
				&& object_index!=o_wall_heli_exp
				&& object_index!=o_special_fx
				&& object_index!=o_rope
				&& object_index!=o_rope_moving
				&& object_index!=o_rope_pendulum
				&& object_index!=o_grenade_small)
					{
		            x=x+other.hsp
		            hsp=0
		            pushed=other.push
		            pushed_hor=other.push
					}
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
	        }
	    vsp=0
	    }

	var carry_ds=instance_place_list_custom(x, y-1, all)
	if(ds_exists(carry_ds, ds_type_list))
	    {
	    for(i=0; i<ds_list_size(carry_ds); i++)
	        {
	        with(ds_list_find_value(carry_ds, i))
	            {
				if(object_index!=o_machinegun_bullet
				&& object_index!=o_lasergun_bullet
				&& object_index!=o_screen_explosion
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
				&& object_index!=o_flying_spawner
				&& object_index!=o_wall_heli_exp
				&& object_index!=o_special_fx
				&& object_index!=o_rope
				&& object_index!=o_rope_moving
				&& object_index!=o_rope_pendulum
				&& object_index!=o_grenade_small)
					{
		            pushed=other.push
		            hsp_carry=other.hsp
					}
	            }
	        }
	    }
	
	var player=instance_place_list_custom(x, y+1, o_main_player)
	if(ds_exists(player, ds_type_list))
	    {
	    for(i=0; i<ds_list_size(player); i++)
	        {
	        with(ds_list_find_value(player, i))
	            {
				if(state==states.ceiling)
					{
					pushed=other.push
					hsp_carry=other.hsp
					}
				}
			}
		}
	if(ds_exists(player, ds_type_list))
	    {
	    ds_list_destroy(player) 
	    } 

		
	var alien=instance_place(x, y+1, o_jumping_alien)

	if(alien!=noone)
		{
		if(alien.enemy_action==jumper.ground)
			{
			alien.pushed=push
			alien.hsp_carry=hsp
			}
		}
	

	if(ds_exists(carry_ds, ds_type_list))
	    {
	    ds_list_destroy(carry_ds) 
	    }    
	y+=vsp

	x=floor(x)
	y=floor(y)



}
