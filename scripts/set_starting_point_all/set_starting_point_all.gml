// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_starting_point_all(p_act){
	switch(p_act)
		{
		case primary_actions.duck: 
			start_bullet_x=x+image_xscale*25
			start_bullet_y=y+20
			if(image_xscale>0)
				{
				bullet_dir=0
				}
			else
				{
				bullet_dir=180
				}
			
			break
		
		case primary_actions.idle: 
			
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y
				}
			else
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y-5
				}
			if(image_xscale>0)
				{
				bullet_dir=0
				}
			else
				{
				bullet_dir=180
				}

			break
		
		case primary_actions.idle_diagonal_up:
			start_bullet_x=x+image_xscale*15
			start_bullet_y=y-13
			if(image_xscale>0)
				{
				bullet_dir=45
				}
			else
				{
				bullet_dir=135
				}

			break
		
		case primary_actions.idle_up:
			start_bullet_x=x
			start_bullet_y=y-20
			bullet_dir=90

			break
		
		case primary_actions.idle_diagonal_down:
			
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*12
				start_bullet_y=y+15
				}
			else
				{
				start_bullet_x=x+image_xscale*15
				start_bullet_y=y+13
				}
			if(image_xscale>0)
				{
				bullet_dir=315
				}
			else
				{
				bullet_dir=225
				}

			break
		
		case primary_actions.idle_down:
			start_bullet_x=x
			start_bullet_y=y+20
			bullet_dir=270

			break		
		
		case primary_actions.run:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y
				}
			else
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y-5
				}
			if(image_xscale>0)
				{
				bullet_dir=0
				}
			else
				{
				bullet_dir=180
				}

			break
		
		case primary_actions.run_up:
			if(object_index==o_player)
				{
				start_bullet_x=(x+image_xscale*15)
				start_bullet_y=y-13
				}
			else
				{
				start_bullet_x=(x+image_xscale*15)
				start_bullet_y=y-17
				}
			if(image_xscale>0)
				{
				bullet_dir=45
				}
			else
				{
				bullet_dir=135
				}

			break
		
		case primary_actions.run_down:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*12
				start_bullet_y=y+15
				}
			else
				{
				start_bullet_x=x+image_xscale*15
				start_bullet_y=y+13
				}
			if(image_xscale>0)
				{
				bullet_dir=315
				}
			else
				{
				bullet_dir=225
				}

			break
		
		case primary_actions.wallcling:
			if(object_index==o_player)
				{
				start_bullet_x=x-image_xscale*30
				start_bullet_y=y
				}
			else
				{
				start_bullet_x=x-image_xscale*25
				start_bullet_y=y-6
				}
			if(image_xscale>0)
				{
				bullet_dir=180
				}
			else
				{
				bullet_dir=0
				}

			break
		
		case primary_actions.wallcling_up:
			
			start_bullet_x=x+2*image_xscale
			start_bullet_y=y-25	
			bullet_dir=90

			break
		
		case primary_actions.wallcling_down:
			if(object_index==o_player)
				{
				start_bullet_x=x-image_xscale
				start_bullet_y=y+20
				}
			else
				{
				start_bullet_x=x-(1*image_xscale)
				start_bullet_y=y+14
				}
			bullet_dir=270

			break
		
		case primary_actions.wallcling_down_diagonal:
			if(object_index==o_player)
				{
				start_bullet_x=x-image_xscale*24
				start_bullet_y=y+17
				}
			else
				{
				start_bullet_x=x-image_xscale*18
				start_bullet_y=y+10
				}
			if(image_xscale>0)
				{
				bullet_dir=225
				}
			else
				{
				bullet_dir=315
				}

			break
		
		case primary_actions.wallcling_up_diagonal:
			if(object_index==o_player)
				{
				start_bullet_x=x-image_xscale*27
				start_bullet_y=y-15
				}
			else
				{
				start_bullet_x=x-image_xscale*20
				start_bullet_y=y-16
				}
			if(image_xscale>0)
				{
				bullet_dir=135
				}
			else
				{
				bullet_dir=45
				}

			break

			case primary_actions.ceiling:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y+12
				}
			else
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y+2
				}
			if(image_xscale>0)
				{
				bullet_dir=0
				}
			else
				{
				bullet_dir=180
				}

			break
		
		case primary_actions.ceiling_up:
			if(object_index==o_player)
				{
				start_bullet_x=x+(3*image_xscale)
				start_bullet_y=y-15		
				}
			else
				{
				start_bullet_x=x+(3*image_xscale)
				start_bullet_y=y-15
				if(weapon_slot[active_slot]==weapons.lasergun)
					{
					start_bullet_y=y-6
					}
				if(weapon_slot[active_slot]==weapons.energygun)
					{
					start_bullet_y=y-3
					}
				}
			bullet_dir=90

			break
		
		case primary_actions.ceiling_down:
			if(object_index==o_player)
				{
				start_bullet_x=x-(3*image_xscale)
				start_bullet_y=y+30	
				}
			else
				{
				start_bullet_x=x-(2*image_xscale)
				start_bullet_y=y+26	
				}
			bullet_dir=270
		
			break
		
		case primary_actions.ceiling_diagonal_down:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*8
				start_bullet_y=y+20
				}
			else
				{
				start_bullet_x=x+image_xscale*16
				start_bullet_y=y+20
				}
			if(image_xscale>0)
				{
				bullet_dir=315
				}
			else
				{
				bullet_dir=225
				}
			
			break
		
		case primary_actions.ceiling_diagonal_up:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*13
				start_bullet_y=y-3
				}
			else
				{
				start_bullet_x=x+image_xscale*15
				start_bullet_y=y-7
				if(weapon_slot[active_slot]==weapons.lasergun)
					{
					start_bullet_y=y-6
					}
				}
			if(image_xscale>0)
				{
				bullet_dir=45
				}
			else
				{
				bullet_dir=135
				}

			break
		
		case primary_actions.jump:
			if(move==0)
				{
				if(key_down && !key_up)
					{
					start_bullet_x=x
					start_bullet_y=y+15
					bullet_dir=270
					}
				if(!key_down && key_up)
					{
					start_bullet_x=x
					start_bullet_y=y+5
					bullet_dir=90
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*10)
					start_bullet_y=y+10
					if(image_xscale>0)
						{
						bullet_dir=0
						}
					else
						{
						bullet_dir=180
						}
					}
				}
			if(move!=0)
				{
				if(key_down && !key_up)
					{
					start_bullet_x=x+(move*10)
					start_bullet_y=y+15
					if(move>0)
						{
						bullet_dir=315
						}
					else
						{
						bullet_dir=225
						}
					}
				if(!key_down && key_up)
					{
					start_bullet_x=x+(move*10)
					start_bullet_y=y
					if(move>0)
						{
						bullet_dir=45
						}
					else
						{
						bullet_dir=135
						}
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*10)
					start_bullet_y=y+10
					if(move>0)
						{
						bullet_dir=0
						}
					else
						{
						bullet_dir=180
						}
					}
				}
			

			break
		
		case primary_actions.fall:
			if(move==0)
				{
				add_bullet_vsp=0
				if(key_down && !key_up)
					{
					start_bullet_x=x
					start_bullet_y=y+15
					bullet_dir=270
					}
				if(!key_down && key_up)
					{
					start_bullet_x=x
					start_bullet_y=y+5
					bullet_dir=90
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*10)
					start_bullet_y=y+10
					if(image_xscale>0)
						{
						bullet_dir=0
						}
					else
						{
						bullet_dir=180
						}
					}
				}
			if(move!=0)
				{
				if(key_down && !key_up)
					{
					start_bullet_x=x+(move*10)
					start_bullet_y=y+15
					if(move>0)
						{
						bullet_dir=315
						}
					else
						{
						bullet_dir=225
						}
					}
				if(!key_down && key_up)
					{
					start_bullet_x=x+(move*10)
					start_bullet_y=y
					if(move>0)
						{
						bullet_dir=45
						}
					else
						{
						bullet_dir=135
						}
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*10)
					start_bullet_y=y+10
					if(move>0)
						{
						bullet_dir=0
						}
					else
						{
						bullet_dir=180
						}
					}
				}

			break
		}
}