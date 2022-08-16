/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
//таймер падения
timer_fall=60

while(place_meeting(x, y, o_floor))
	{
	y=y+1
	}

hsp=0
vsp=0

//пресс можно расстрелять а это его хп
hp=30

//рисуем якорь на который "цепляется" пресс
anchor_x=x
anchor_y=y-16


//grav=0.5

target=noone