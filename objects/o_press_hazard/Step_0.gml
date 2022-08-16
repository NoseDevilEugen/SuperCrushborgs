/// @description Insert description here
// You can write your code in this editor



//отсчет до падения
if(timer_fall>0 && vsp==0)
	{
	hsp=0
	vsp=0
	timer_fall=timer_fall-1
	}
else
//воткнулся в пол и поднимается обратно
	{
	//timer_fall=60
	if(place_meeting(x, y+1, o_floor) || place_meeting(x, y+1, o_one_way_floor)) 
		{
		//timer_fall=30
		//show_message("Касание")
		vsp=-5
		}
	if(place_meeting(x, y-1, o_floor))
		{
		vsp=15
		}
	}
	
if(place_meeting(x, y+floor(vsp), o_floor) && vsp!=0)
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		//show_message("Касание")
		y=y+sign(vsp)
		}
	//show_message("Касание")
	vsp=0
	timer_fall=60
	}
	
if(place_meeting(x, y+floor(vsp), o_one_way_floor) && vsp!=0)
	{
	while(!place_meeting(x, y+sign(vsp), o_one_way_floor))
		{
		//show_message("Касание")
		y=y+sign(vsp)
		}
	//show_message("Касание")
	vsp=0
	timer_fall=60
	}
	
y=floor(y)	
y=y+vsp
y=floor(y)

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}

//этот скрипт для уничтожения всего за пределами экрана. вызови если хочешь уничтожать инстанс типа пули или гранаты
//scr_destroy_projectile()