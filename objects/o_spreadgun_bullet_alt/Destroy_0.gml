/// @description Insert description here
// You can write your code in this editor

if(spawn==true)
	{
	var i=0

	if(vsp==0)
		{
		if(hsp<0)
			{
			spreadgun_dir[0]=170
			spreadgun_dir[1]=180
			spreadgun_dir[2]=190
			}
		else if (hsp>0)
			{
			spreadgun_dir[0]=10
			spreadgun_dir[1]=0
			spreadgun_dir[2]=350
			}
		}
	
	if(hsp==0)
		{
		if(vsp<0)
			{
			spreadgun_dir[0]=100
			spreadgun_dir[1]=90
			spreadgun_dir[2]=80
			}
		else if (vsp>0)
			{
			spreadgun_dir[0]=260
			spreadgun_dir[1]=270
			spreadgun_dir[2]=280
			}
		}
	
	if(hsp!=0 && vsp!=0)
		{
		if(hsp>0)
			{
				if(vsp<0)
				{
				spreadgun_dir[0]=55
				spreadgun_dir[1]=45
				spreadgun_dir[2]=35
				}
			else if (vsp>0)
				{
				spreadgun_dir[0]=325
				spreadgun_dir[1]=315
				spreadgun_dir[2]=305
				}
			}
		else if(hsp<0)
			{
				if(vsp<0)
				{
				spreadgun_dir[0]=125
				spreadgun_dir[1]=135
				spreadgun_dir[2]=145
				}
			else if (vsp>0)
				{
				spreadgun_dir[0]=215
				spreadgun_dir[1]=225
				spreadgun_dir[2]=235
				}
			}
		}

	for(i=0; i<3; i++)
		{	
		with(instance_create_layer(x, y, "Bullets", o_spreadgun_bullet_alt_expl))
			{
			firepower=2
			parent=other.parent
			spawn=false
			hsp=lengthdir_x(bullet_speed+4, other.spreadgun_dir[i])
			vsp=lengthdir_y(bullet_speed+4, other.spreadgun_dir[i])
			}
		}
	}