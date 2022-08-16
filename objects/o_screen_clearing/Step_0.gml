/// @description Insert description here
// You can write your code in this editor

x=o_camera.screen_left-48
y=o_camera.screen_top-27

timer=timer-1

if(timer<30 && timer!=1 && timer!=15)
	{
	firepower=0
	}
else
	{
	firepower=10
	}

if(timer<=0)
	{
	instance_destroy()
	}