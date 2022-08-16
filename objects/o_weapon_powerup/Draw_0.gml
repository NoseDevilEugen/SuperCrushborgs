/// @description Insert description here
// You can write your code in this editor

//моргание предмета перед тем как исчезнуть
if((vanish_timer>120 || vanish_timer==-1)
|| (vanish_timer<=120 
&& vanish_timer%2==0))
	{
	draw_self()
	}