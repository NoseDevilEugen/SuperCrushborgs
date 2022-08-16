/// @description Insert description here
// You can write your code in this editor




if(instance_exists(my_flower) && my_flower.action==flower_actions.rise && my_flower.AI_active==true)
	{
	if(image_yscale>0)
		{
		if(y<my_flower.ystart)
			{
			instance_change(o_flower_leg, false)
			//visible=true
			}
		}
	else
		{
		if(y>my_flower.ystart)
			{
			instance_change(o_flower_leg, false)
			//visible=true
			}
		}
	}
	
if(instance_exists(my_flower) && my_flower.action==flower_actions.idle)
	{
	if(image_yscale>0)
		{
		if(y>my_flower.ystart)
			{
			instance_destroy()
			}
		}
	else
		{
		if(y<my_flower.ystart)
			{
			instance_destroy()	
			}
		}	
	angle_accelerration = (-image_yscale*(.05*velocity_dampening)) * dcos(counter)
    angle_velocity += angle_accelerration
	
	counter=(((counter)+angle_velocity) mod 360)
	counter=clamp(counter, 0, 360)
	
	val1=dcos_array[floor(counter)]*(leg_num*12)
	val2=dsin_array[floor(counter)]*(leg_num*12)
	
	hsp=(my_flower.xstart + (val1-xprevious))	//простое движение влево-вправо от xstart
	vsp=(my_flower.ystart + (val2-yprevious))
	
	/*
	if(image_yscale==1)
		{
		vsp=(my_flower.ystart - (abs(my_flower.dcos_array[floor(counter)]))*((leg_num))*12)-yprevious 
		}
	else
		{
		vsp=(my_flower.ystart + (abs(my_flower.dcos_array[floor(counter)]))*((leg_num))*12)-yprevious
		}
	*/
	}
x=x+floor(hsp)
y=y+floor(vsp)