/// @description Insert description here
// You can write your code in this editor
my_next_room=room_area_waterfall_boss
player_change_timer=1
player=o_controller.player1

head=instance_create(x, y, o_dual_spider_head)
with(head)
	{
	image_xscale=other.image_xscale
	parent=other.id
	}
	
add_score=1000
add_to=noone	
	
target=noone

vsp=0

phase=1

movespeed=-1

grenade_timer=120

grenade_hsp=3
grenade_vsp=-6

image_speed=0.2
image_index=6

web_shot=false

timer_fly=360

fly_dir=1

timer_web_shot=180


timer_web_change=60

timer_web_return=30

dual_spider_action=dual_spider_actions.move

head.image_xscale=image_xscale

web[0]=instance_create(x, y, o_dual_spider_web_bullet)
with(web[0])
	{
	my_spider=other.id
	depth=other.depth+1
	}
web[1]=instance_create(x, y, o_dual_spider_web_bullet)
with(web[1])
	{
	my_spider=other.id
	depth=other.depth+1
	}
web[2]=instance_create(x, y, o_dual_spider_web_bullet)
with(web[2])
	{
	my_spider=other.id
	depth=other.depth+1
	}
web[3]=instance_create(x, y, o_dual_spider_web_bullet)
with(web[3])
	{
	my_spider=other.id
	depth=other.depth+1
	}
web[4]=instance_create(x, y, o_dual_spider_web_bullet)
with(web[4])
	{
	my_spider=other.id
	depth=other.depth+1
	}



dir[0]=0
dir[1]=0
dir[2]=0
dir[3]=0
dir[4]=0

player_dir=0

action_word[dual_spider_actions.move]="Move"
action_word[dual_spider_actions.shoot_web]="Shoot"
action_word[dual_spider_actions.attack_web]="Attack"
action_word[dual_spider_actions.return_web]="Return"