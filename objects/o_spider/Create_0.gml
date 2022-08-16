/// @description Insert description here
// You can write your code in this editor
my_next_room=noone

scr_init_standing()

player_change_timer=1
player=o_controller.player1

hsp=0
vsp=0

starting_x=0
starting_y=0

player_direction=0

turnaround_timer=60

add_score=1000
add_to=noone

grav=0.2

image_speed=0.2

hit_confirm=false
hit_timer=0
timer_vsp_change=150

ceiling=true

jumps=1

image_xscale=-1

movespeed=1


hp=400

timer_jump=40
//timer_jump_ceiling=1200
timer_shoot=-1

timer_hand=35

timer_idle=400

hand=instance_create(x+(5*image_xscale), y+10, o_spider_hand)
gun=instance_create(x+(5*image_xscale), y+10, o_spider_gun)

spider_action=spider_actions.idle

action_word[spider_actions.idle]="Idle"
action_word[spider_actions.jump]="Jump"
action_word[spider_actions.jump_ceiling]="Jump ceiling"
action_word[spider_actions.hand_attack]="Hand attack"



sprite_array[spider_actions.idle]=s_spider_idle
sprite_array[spider_actions.hand_attack]=s_spider_idle
sprite_array[spider_actions.jump]=s_spider_jump
sprite_array[spider_actions.jump_ceiling]=s_spider_jump

target=instance_create(x, y, o_homing_aim)
