	/// @description Insert description here
// You can write your code in this editor
my_next_room=room_area_test2
player_change_timer=1
player=o_controller.player1

add_score=2000
add_to=noone

hsp=0
vsp=0

hit_timer=0

timer_shot1=240
timer_shot2=100

phase=1

sprite_index=s_waterfall_boss_head_center

if(o_controller.game_mode==0 || o_controller.game_mode==1)
	{
	hp=400
	}
else
	{
	hp=500
	}

target=instance_create(x, y, o_homing_aim)


handl=instance_create(x-80, y+64, o_w_boss_hand)
handr=instance_create(x+80, y+64, o_w_boss_hand)
with(handr)
	{
	image_xscale=-1
	dir=-1
	}
	
counter=0	
	
var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}