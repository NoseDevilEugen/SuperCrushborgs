// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function floor_ver_step_new(){
	
	
	push_hor=false
	push_ver=false
	
	x=floor(x)
	y=floor(y)


	timer=((timer+2) mod 360)	
	//var y_prev=(y)
	vsp=((y_start + dsin_array[floor(timer)]*10)-yprevious)
	
	
	
	y=y+vsp
	y=round(y)
	//tilemap_set(my_tilemap, 1, 0, 0)
	//tilemap_x(my_tilemap, x)
	
	
	//r_side.y=r_side.y+vsp
	//r_side.y=round(r_side.y)	
	//l_side.y=l_side.y+vsp
	//l_side.y=round(l_side.y)	
	//b_side.y=b_side.y+vsp
	//b_side.y=round(b_side.y)
	//y=y+vsp
}