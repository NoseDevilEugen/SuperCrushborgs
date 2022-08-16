//pathfinding, important
slope_down=false
slope_up=false

left=false

image_xscale=1

timer_spawn=0
timer_destroy=20

ow_p=false

add_score=40
add_to=noone

ressurect=true
yplus=0

//image_xscale=1

player=o_controller.player1

jump_timer=0
jump_vsp=0

jumped=true
jumped_timer=50


//hazard_touch=noone
target=instance_create(x, y, o_homing_aim)

state=states.grounded
action=jija2_actions.sit

turnaround_random=100


enemy_action=jumper.air
enemy_onscreen=false
hurtbox_created=false
hurtbox_destroyed=false
max_hp=9
hp=max_hp

scr_init_standing()

cone_dir1=300
cone_dir2=330

just_feet=noone

salto=false

AI_active=false

image_index=0
image_yscale=1
image_speed=0.5


movespeed=2
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

hit_timer=0

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
grav=0.25
fric=1
floor_y=0
vortexed=false
vortex_hsp=12
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

timer=0

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}