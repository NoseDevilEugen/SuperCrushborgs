/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
player=o_controller.player1

start_x=player.x
start_y=player.y


dir=0

orbit = floor(point_distance(x, y, player.x, player.y))
//orbit=clamp(orbit, 100, 200)
//angle = point_direction(o_controller.player.x, o_controller.player.y, x, y)
orb_speed = 2

timer=90

hand_speed=1

hit_timer=0

//length=10

angle=point_direction(x, y, player.x, player.y)
	
	hsp=lengthdir_x(3, angle)
	vsp=lengthdir_y(3, angle)

hp=10

target=instance_create(x, y, o_homing_aim)

speed_change=irandom_range(200,500)

save_speed=orb_speed