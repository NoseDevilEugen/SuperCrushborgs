function scr_set_starting_point(argument0) {

	add_bullet_vsp=0

	var i=0

	switch(argument0)
		{
		case primary_actions.duck: 
			start_bullet_x=x+image_xscale*60
			start_bullet_y=y+40
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
			
			for(i=0; i<5; i++)
				{
			
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		
		case primary_actions.idle: 
			start_bullet_x=x+image_xscale*30
			start_bullet_y=y
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
			
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.idle_diagonal_up:
			start_bullet_x=x+image_xscale*30
			start_bullet_y=y-40
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
			//spreadgun_dir[]=point_direction(start_bullet_x, start_bullet_y, start_bullet_x+(300*image_xscale), start_bullet_y-300)
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.idle_up:
			start_bullet_x=x
			start_bullet_y=y-50
		
			spreadgun_dir[0]=110
			spreadgun_dir[1]=100
			spreadgun_dir[2]=90
			spreadgun_dir[3]=80
			spreadgun_dir[4]=70
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.idle_diagonal_down:
			start_bullet_x=x+image_xscale*30
			start_bullet_y=y+40
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
		
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.idle_down:
			start_bullet_x=x-image_xscale*4
			start_bullet_y=y+50
			spreadgun_dir[0]=250
			spreadgun_dir[1]=260
			spreadgun_dir[2]=270
			spreadgun_dir[3]=280
			spreadgun_dir[4]=290
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break		
		
		case primary_actions.run:
			start_bullet_x=x+image_xscale*40
			start_bullet_y=y
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
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.run_up:
			start_bullet_x=(x+image_xscale*40)
			start_bullet_y=y-40
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
			
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])+4*sign(other.image_xscale)
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.run_down:
			start_bullet_x=x+image_xscale*30
			start_bullet_y=y+40		
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
		
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])+4*sign(other.hsp)
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.wallcling:
			start_bullet_x=x-image_xscale*60
			start_bullet_y=y+3		
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
			
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.wallcling_up:
			start_bullet_x=x
			start_bullet_y=y-60		
			spreadgun_dir[0]=110
			spreadgun_dir[1]=100
			spreadgun_dir[2]=90
			spreadgun_dir[3]=80
			spreadgun_dir[4]=70
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.wallcling_down:
			start_bullet_x=x
			start_bullet_y=y+60		
			spreadgun_dir[0]=250
			spreadgun_dir[1]=260
			spreadgun_dir[2]=270
			spreadgun_dir[3]=280
			spreadgun_dir[4]=290
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.wallcling_down_diagonal:
			start_bullet_x=x-image_xscale*60
			start_bullet_y=y+40
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
		
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.wallcling_up_diagonal:
			start_bullet_x=x-image_xscale*54
			start_bullet_y=y-30
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
			
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
			//
		
			case primary_actions.ceiling:
			start_bullet_x=x+image_xscale*40
			start_bullet_y=y+15		
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
			
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.ceiling_up:
			start_bullet_x=x
			start_bullet_y=y-60		
			spreadgun_dir[0]=110
			spreadgun_dir[1]=100
			spreadgun_dir[2]=90
			spreadgun_dir[3]=80
			spreadgun_dir[4]=70
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.ceiling_down:
			start_bullet_x=x
			start_bullet_y=y+60		
			spreadgun_dir[0]=250
			spreadgun_dir[1]=260
			spreadgun_dir[2]=270
			spreadgun_dir[3]=280
			spreadgun_dir[4]=290
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.ceiling_diagonal_down:
			start_bullet_x=x+image_xscale*30
			start_bullet_y=y+50
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
		
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.ceiling_diagonal_up:
			start_bullet_x=x+image_xscale*30
			start_bullet_y=y-25
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
			
			//spreadgun_dir[]=point_direction(start_bullet_x, start_bullet_y, start_bullet_x+(300*image_xscale), start_bullet_y-300)
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])
					}
				}
			break
		
		case primary_actions.jump:
			if(move==0)
				{
				add_bullet_vsp=0
				if(key_down && !key_up)
					{
					start_bullet_x=x
					start_bullet_y=y+30
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
					start_bullet_y=y+10
					spreadgun_dir[0]=110
					spreadgun_dir[1]=100
					spreadgun_dir[2]=90
					spreadgun_dir[3]=80
					spreadgun_dir[4]=70
					add_bullet_vsp=0
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*20)
					start_bullet_y=y+20
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
					start_bullet_x=x+(move*20)
					start_bullet_y=y+30
					add_bullet_vsp=4
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
					start_bullet_x=x+(move*20)
					start_bullet_y=y+10
					add_bullet_vsp=-4
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
					start_bullet_x=x+(image_xscale*20)
					start_bullet_y=y+20
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
			
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])+4*sign(other.last_move)
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])+other.add_bullet_vsp
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
					start_bullet_y=y+30
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
					start_bullet_y=y+10
					spreadgun_dir[0]=110
					spreadgun_dir[1]=100
					spreadgun_dir[2]=90
					spreadgun_dir[3]=80
					spreadgun_dir[4]=70
					add_bullet_vsp=0
					}
				if(!key_down && !key_up)
					{
					start_bullet_x=x+(image_xscale*20)
					start_bullet_y=y+20
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
					start_bullet_x=x+(move*20)
					start_bullet_y=y+30
					add_bullet_vsp=4
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
					start_bullet_x=x+(move*20)
					start_bullet_y=y+10
					add_bullet_vsp=-4
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
					start_bullet_x=x+(image_xscale*20)
					start_bullet_y=y+20
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
			
			for(i=0; i<5; i++)
				{
				with(instance_create_layer(start_bullet_x, start_bullet_y, "Bullets", o_machinegun_bullet))
					{
					hsp=lengthdir_x(other.bullet_speed, other.spreadgun_dir[i])+4*sign(other.last_move)
					vsp=lengthdir_y(other.bullet_speed, other.spreadgun_dir[i])+other.add_bullet_vsp
					}
				}
			break
		}


}
