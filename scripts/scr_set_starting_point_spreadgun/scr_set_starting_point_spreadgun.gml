function scr_set_starting_point_spreadgun(p_action, o_bullet) {

	add_bullet_vsp=0

	var i=0

	switch(p_action)
		{
		case primary_actions.duck: 
			start_bullet_x=x+image_xscale*25
			start_bullet_y=y+20
				
			if(image_xscale>0)
				{
				spreadgun_dir[0]=20
				spreadgun_dir[1]=10
				spreadgun_dir[2]=0
				spreadgun_dir[3]=350
				spreadgun_dir[4]=340
				}
			else
				{
				spreadgun_dir[0]=160
				spreadgun_dir[1]=170
				spreadgun_dir[2]=180
				spreadgun_dir[3]=190
				spreadgun_dir[4]=200
				}
			break
		
		
		case primary_actions.idle: 
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y+1
				}
			else
				{
				start_bullet_x=x+image_xscale*22
				start_bullet_y=y-6
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=20
				spreadgun_dir[1]=10
				spreadgun_dir[2]=0
				spreadgun_dir[3]=350
				spreadgun_dir[4]=340
				}
			else
				{
				spreadgun_dir[0]=160
				spreadgun_dir[1]=170
				spreadgun_dir[2]=180
				spreadgun_dir[3]=190
				spreadgun_dir[4]=200
				}
			break
		
		case primary_actions.idle_diagonal_up:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*15
				start_bullet_y=y-11
				}
			else
				{
				start_bullet_x=x+image_xscale*16
				start_bullet_y=y-14
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=65
				spreadgun_dir[1]=55
				spreadgun_dir[2]=45
				spreadgun_dir[3]=35
				spreadgun_dir[4]=25
				}
			else
				{
				spreadgun_dir[0]=115
				spreadgun_dir[1]=125
				spreadgun_dir[2]=135
				spreadgun_dir[3]=145
				spreadgun_dir[4]=155
				}
			break
		
		case primary_actions.idle_up:
			start_bullet_x=x
			start_bullet_y=y-20
		
			spreadgun_dir[0]=110
			spreadgun_dir[1]=100
			spreadgun_dir[2]=90
			spreadgun_dir[3]=80
			spreadgun_dir[4]=70
			break
		
		case primary_actions.idle_diagonal_down:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*12
				start_bullet_y=y+16
				}
			else
				{
				start_bullet_x=x+image_xscale*14
				start_bullet_y=y+14
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=295
				spreadgun_dir[1]=305
				spreadgun_dir[2]=315
				spreadgun_dir[3]=325
				spreadgun_dir[4]=335
				}
			else
				{
				spreadgun_dir[0]=245
				spreadgun_dir[1]=235
				spreadgun_dir[2]=225
				spreadgun_dir[3]=215
				spreadgun_dir[4]=205	
				}
			break
		
		case primary_actions.idle_down:
			start_bullet_x=x
			start_bullet_y=y+20
			spreadgun_dir[0]=250
			spreadgun_dir[1]=260
			spreadgun_dir[2]=270
			spreadgun_dir[3]=280
			spreadgun_dir[4]=290
			break		
		
		case primary_actions.run:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y+1
				}
			else
				{
				start_bullet_x=x+image_xscale*22
				start_bullet_y=y-6
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=20
				spreadgun_dir[1]=10
				spreadgun_dir[2]=0
				spreadgun_dir[3]=350
				spreadgun_dir[4]=340
				}
			else
				{
				spreadgun_dir[0]=160
				spreadgun_dir[1]=170
				spreadgun_dir[2]=180
				spreadgun_dir[3]=190
				spreadgun_dir[4]=200
				}
			break
		
		case primary_actions.run_up:
			start_bullet_x=(x+image_xscale*15)
			start_bullet_y=y-12
			if(image_xscale>0)
				{
				spreadgun_dir[0]=65
				spreadgun_dir[1]=55
				spreadgun_dir[2]=45
				spreadgun_dir[3]=35
				spreadgun_dir[4]=25
				}
			else
				{
				spreadgun_dir[0]=115
				spreadgun_dir[1]=125
				spreadgun_dir[2]=135
				spreadgun_dir[3]=145
				spreadgun_dir[4]=155
				}
			break
		
		case primary_actions.run_down:
			start_bullet_x=x+image_xscale*12
			start_bullet_y=y+16		
			if(image_xscale>0)
				{
				spreadgun_dir[0]=295
				spreadgun_dir[1]=305
				spreadgun_dir[2]=315
				spreadgun_dir[3]=325
				spreadgun_dir[4]=335
				}
			else
				{
				spreadgun_dir[0]=245
				spreadgun_dir[1]=235
				spreadgun_dir[2]=225
				spreadgun_dir[3]=215
				spreadgun_dir[4]=205	
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
				start_bullet_x=x-image_xscale*30
				start_bullet_y=y-6
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=160
				spreadgun_dir[1]=170
				spreadgun_dir[2]=180
				spreadgun_dir[3]=190
				spreadgun_dir[4]=200
				}
			else
				{
				spreadgun_dir[0]=20
				spreadgun_dir[1]=10
				spreadgun_dir[2]=0
				spreadgun_dir[3]=350
				spreadgun_dir[4]=340
				}
			break
		
		case primary_actions.wallcling_up:
			start_bullet_x=x+2*image_xscale
			start_bullet_y=y-25		
			spreadgun_dir[0]=110
			spreadgun_dir[1]=100
			spreadgun_dir[2]=90
			spreadgun_dir[3]=80
			spreadgun_dir[4]=70
			break
		
		case primary_actions.wallcling_down:
			if(object_index==o_player)
				{
				start_bullet_x=x-image_xscale
				start_bullet_y=y+20
				}
			else
				{
				start_bullet_x=x-(image_xscale)
				start_bullet_y=y+20
				}	
			spreadgun_dir[0]=250
			spreadgun_dir[1]=260
			spreadgun_dir[2]=270
			spreadgun_dir[3]=280
			spreadgun_dir[4]=290
			break
		
		case primary_actions.wallcling_down_diagonal:
			
			if(object_index==o_player)
				{
				start_bullet_x=x-image_xscale*24
				start_bullet_y=y+17
				}
			else
				{
				start_bullet_x=x-image_xscale*21
				start_bullet_y=y+12
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=245
				spreadgun_dir[1]=235
				spreadgun_dir[2]=225
				spreadgun_dir[3]=215
				spreadgun_dir[4]=205

				}
			else
				{	
				spreadgun_dir[0]=295
				spreadgun_dir[1]=305
				spreadgun_dir[2]=315
				spreadgun_dir[3]=325
				spreadgun_dir[4]=335
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
				start_bullet_y=y-18
				}
			if(image_xscale>0)
				{	
				spreadgun_dir[0]=115
				spreadgun_dir[1]=125
				spreadgun_dir[2]=135
				spreadgun_dir[3]=145
				spreadgun_dir[4]=155

				}
			else
				{
				spreadgun_dir[0]=65
				spreadgun_dir[1]=55
				spreadgun_dir[2]=45
				spreadgun_dir[3]=35
				spreadgun_dir[4]=25
				}
			break
			//
		
			case primary_actions.ceiling:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*20
				start_bullet_y=y+12
				}
			else
				{
				start_bullet_x=x+image_xscale*22
				start_bullet_y=y+1
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=20
				spreadgun_dir[1]=10
				spreadgun_dir[2]=0
				spreadgun_dir[3]=350
				spreadgun_dir[4]=340
				}
			else
				{
				spreadgun_dir[0]=160
				spreadgun_dir[1]=170
				spreadgun_dir[2]=180
				spreadgun_dir[3]=190
				spreadgun_dir[4]=200
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
				start_bullet_x=x+(4*image_xscale)
				start_bullet_y=y-16	
				}	
			spreadgun_dir[0]=110
			spreadgun_dir[1]=100
			spreadgun_dir[2]=90
			spreadgun_dir[3]=80
			spreadgun_dir[4]=70
			break
		
		case primary_actions.ceiling_down:
			if(object_index==o_player)
				{
				start_bullet_x=x-(3*image_xscale)
				start_bullet_y=y+30		
				}
			else
				{
				start_bullet_x=x-(image_xscale)
				start_bullet_y=y+27	
				}	
			spreadgun_dir[0]=250
			spreadgun_dir[1]=260
			spreadgun_dir[2]=270
			spreadgun_dir[3]=280
			spreadgun_dir[4]=290
			break
		
		case primary_actions.ceiling_diagonal_down:
			if(object_index==o_player)
				{
				start_bullet_x=x+image_xscale*8
				start_bullet_y=y+20
				}
			else
				{
				start_bullet_x=x+image_xscale*17
				start_bullet_y=y+23
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=295
				spreadgun_dir[1]=305
				spreadgun_dir[2]=315
				spreadgun_dir[3]=325
				spreadgun_dir[4]=335
				}
			else
				{
				spreadgun_dir[0]=245
				spreadgun_dir[1]=235
				spreadgun_dir[2]=225
				spreadgun_dir[3]=215
				spreadgun_dir[4]=205	
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
				start_bullet_x=x+image_xscale*16
				start_bullet_y=y-10
				}
			if(image_xscale>0)
				{
				spreadgun_dir[0]=65
				spreadgun_dir[1]=55
				spreadgun_dir[2]=45
				spreadgun_dir[3]=35
				spreadgun_dir[4]=25
				}
			else
				{
				spreadgun_dir[0]=115
				spreadgun_dir[1]=125
				spreadgun_dir[2]=135
				spreadgun_dir[3]=145
				spreadgun_dir[4]=155
				}
			break
		
		case primary_actions.jump:
			if(move==0)
				{
				add_bullet_vsp=0
				if(key_down && !key_up)
					{
					start_bullet_x=x
					start_bullet_y=y+15
					spreadgun_dir[0]=250
					spreadgun_dir[1]=260
					spreadgun_dir[2]=270
					spreadgun_dir[3]=280
					spreadgun_dir[4]=290
					add_bullet_vsp=0
					}
				if(!key_down && key_up)
					{
					start_bullet_x=x
					start_bullet_y=y+5
					spreadgun_dir[0]=110
					spreadgun_dir[1]=100
					spreadgun_dir[2]=90
					spreadgun_dir[3]=80
					spreadgun_dir[4]=70
					add_bullet_vsp=0
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*10)
					start_bullet_y=y+10
					add_bullet_vsp=0
					if(image_xscale>0)
						{
						spreadgun_dir[0]=20
						spreadgun_dir[1]=10
						spreadgun_dir[2]=0
						spreadgun_dir[3]=350
						spreadgun_dir[4]=340
						}
					else
						{
						spreadgun_dir[0]=160
						spreadgun_dir[1]=170
						spreadgun_dir[2]=180
						spreadgun_dir[3]=190
						spreadgun_dir[4]=200
						}
					}
				}
			if(move!=0)
				{
				if(key_down && !key_up)
					{
					start_bullet_x=x+(move*10)
					start_bullet_y=y+15
					add_bullet_vsp=2
					if(move>0)
						{
						spreadgun_dir[0]=295
						spreadgun_dir[1]=305
						spreadgun_dir[2]=315
						spreadgun_dir[3]=325
						spreadgun_dir[4]=335
						}
					else
						{
						spreadgun_dir[0]=245
						spreadgun_dir[1]=235
						spreadgun_dir[2]=225
						spreadgun_dir[3]=215
						spreadgun_dir[4]=205	
						}
					}
				if(!key_down && key_up)
					{
					start_bullet_x=x+(move*10)
					start_bullet_y=y+5
					add_bullet_vsp=-2
					if(move>0)
						{
						spreadgun_dir[0]=65
						spreadgun_dir[1]=55
						spreadgun_dir[2]=45
						spreadgun_dir[3]=35
						spreadgun_dir[4]=25
						}
					else
						{
						spreadgun_dir[0]=115
						spreadgun_dir[1]=125
						spreadgun_dir[2]=135
						spreadgun_dir[3]=145
						spreadgun_dir[4]=155
						}
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*10)
					start_bullet_y=y+10
					add_bullet_vsp=0
					if(move>0)
						{
						spreadgun_dir[0]=20
						spreadgun_dir[1]=10
						spreadgun_dir[2]=0
						spreadgun_dir[3]=350
						spreadgun_dir[4]=340
						}
					else
						{
						spreadgun_dir[0]=160
						spreadgun_dir[1]=170
						spreadgun_dir[2]=180
						spreadgun_dir[3]=190
						spreadgun_dir[4]=200
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
					spreadgun_dir[0]=250
					spreadgun_dir[1]=260
					spreadgun_dir[2]=270
					spreadgun_dir[3]=280
					spreadgun_dir[4]=290
					add_bullet_vsp=0
					}
				if(!key_down && key_up)
					{
					start_bullet_x=x
					start_bullet_y=y+5
					spreadgun_dir[0]=110
					spreadgun_dir[1]=100
					spreadgun_dir[2]=90
					spreadgun_dir[3]=80
					spreadgun_dir[4]=70
					add_bullet_vsp=0
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*10)
					start_bullet_y=y+10
					add_bullet_vsp=0
					if(image_xscale>0)
						{
						spreadgun_dir[0]=20
						spreadgun_dir[1]=10
						spreadgun_dir[2]=0
						spreadgun_dir[3]=350
						spreadgun_dir[4]=340
						}
					else
						{
						spreadgun_dir[0]=160
						spreadgun_dir[1]=170
						spreadgun_dir[2]=180
						spreadgun_dir[3]=190
						spreadgun_dir[4]=200
						}
					}
				}
			if(move!=0)
				{
				if(key_down && !key_up)
					{
					start_bullet_x=x+(move*10)
					start_bullet_y=y+15
					add_bullet_vsp=2
					if(move>0)
						{
						spreadgun_dir[0]=295
						spreadgun_dir[1]=305
						spreadgun_dir[2]=315
						spreadgun_dir[3]=325
						spreadgun_dir[4]=335
						}
					else
						{
						spreadgun_dir[0]=245
						spreadgun_dir[1]=235
						spreadgun_dir[2]=225
						spreadgun_dir[3]=215
						spreadgun_dir[4]=205	
						}
					}
				if(!key_down && key_up)
					{
					start_bullet_x=x+(move*10)
					start_bullet_y=y+5
					add_bullet_vsp=-2
					if(move>0)
						{
						spreadgun_dir[0]=65
						spreadgun_dir[1]=55
						spreadgun_dir[2]=45
						spreadgun_dir[3]=35
						spreadgun_dir[4]=25
						}
					else
						{
						spreadgun_dir[0]=115
						spreadgun_dir[1]=125
						spreadgun_dir[2]=135
						spreadgun_dir[3]=145
						spreadgun_dir[4]=155
						}
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*10)
					start_bullet_y=y+10
					add_bullet_vsp=0
					if(move>0)
						{
						spreadgun_dir[0]=20
						spreadgun_dir[1]=10
						spreadgun_dir[2]=0
						spreadgun_dir[3]=350
						spreadgun_dir[4]=340
						}
					else
						{
						spreadgun_dir[0]=160
						spreadgun_dir[1]=170
						spreadgun_dir[2]=180
						spreadgun_dir[3]=190
						spreadgun_dir[4]=200
						}
					}
				}
			break
		}
	
	if(object_index==o_player)
		{
		for(i=0; i<5; i++)
			{
			with(instance_create_layer(start_bullet_x+hsp, start_bullet_y+vsp, "Bullets", o_bullet))
				{
				parent=other.id
				hsp=lengthdir_x(bullet_speed, other.spreadgun_dir[i])
				vsp=lengthdir_y(bullet_speed, other.spreadgun_dir[i])
				}
			}
		}
	else
		{
		with(instance_create_layer(start_bullet_x+hsp, start_bullet_y+vsp, "Bullets", o_bullet))
			{
			parent=other.id
			hsp=lengthdir_x(bullet_speed, other.spreadgun_dir[2])
			vsp=lengthdir_y(bullet_speed, other.spreadgun_dir[2])
			}
		}


}
