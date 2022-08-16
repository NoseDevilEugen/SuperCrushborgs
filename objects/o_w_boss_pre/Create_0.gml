/// @description Insert description here
// You can write your code in this editor
timer=360


handl=instance_create_layer(x-80, y+64, "depth_player", o_w_boss_hand_pre)
handr=instance_create_layer(x+80, y+64, "depth_player", o_w_boss_hand_pre)
with(handr)
	{
	image_xscale=-1
	dir=-1
	}