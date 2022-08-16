/// @description Insert description here
// You can write your code in this editor

//если анпик больше нуля то итем нельзя взять
if(unpick_timer>0)
	{
	unpick_timer=unpick_timer-1
	}
	
//когда ваниш равен нулю то итем исчезает
if(vanish_timer>0)
	{
	vanish_timer=vanish_timer-1
	}

//bbox offsets
bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)



//locked=false
pushed_ver=false
pushed_hor=false

if(!place_meeting(x, y, o_floor))
	{
	if(place_meeting(x+floor(hsp), y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=0
		}
	}

//гравитация для паверапов
if(vsp<6)
	{
	vsp=vsp+grav
	}




//столокновение с полом
/*

if(place_meeting(x, y+1, o_floor)
|| place_meeting(x, y+1, o_one_way_floor))
	{
	grav=0
	}
else
	{
	grav=0.5
	}
*/

scr_init_conv_belt()

scr_init_slopes(state, states.grounded)
scr_init_slopes_ceiling_soldier(state, states.grounded)


scr_init_horizontal_collisions()              
x=hsp_final+x
x=floor(x)  

col_v=true
scr_init_vertical_collisions()     

scr_init_oneway_collisions()   

scr_init_oneway_collisions_end()

//коллизии с полом и ван-веями
if(!place_meeting(x, y, o_floor))
	{
	if(place_meeting(x, y+1, o_floor) || ow_p==true)
		{
		unpick_timer=0
		vanish_timer=360
		hsp=0
		vsp=0
		}
	}

y=y+floor(vsp)
y=floor(y)

if(vanish_timer==0)
	{
	instance_destroy()
	}

sprite_index=s_array[weapon]