//этот враг просто бежит и прыгает
slope_down=false
slope_up=false

player=o_controller.player1

add_score=100
add_to=noone

ow_p=false

ressurect=true
yplus=0

image_xscale=-1


scr_init_standing()


//hazard_touch=noone
target=instance_create(x, y, o_homing_aim)

turnaround_random=100

hit_timer=0
enemy_action=jija_actions.idle
enemy_state=enemy_states.grounded
enemy_onscreen=false
hurtbox_created=false
hurtbox_destroyed=false
max_hp=15
hp=max_hp


cone_dir1=300
cone_dir2=330

just_feet=noone


AI_active=false

image_speed=0.15


movespeed=3
//because fuck you, you're too fast!
locked=false
attack_timer=200
catch_horizontal=false
catch_diagonal=false
basic_recovery=30
afterhit_recovery=basic_recovery 
roulette_recovery=0

my_path_x=0
my_path_y=0

pathfind_x=0

//ds_list_add(o_zero.ds_enemies, id)

hsp=0
hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false
vsp=0
grav=0.3
fric=1
floor_y=0
vortexed=false
vortex_hsp=6
catched_x=0
catched_y=0
//im good at naming variables, trust me

//AI variables

bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left

whole_body=noone
oneway_col=false
feet_col=false
just_feet=noone

idle_timer=40

a_hitbox=noone

s_array[jija_actions.idle]=s_jija_idle
s_array[jija_actions.chase]=s_jija_walk
s_array[jija_actions.attack]=s_jija_attack