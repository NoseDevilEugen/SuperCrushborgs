//этот враг просто бежит и прыгает
slope_down=false
slope_up=false

on_fire=false


fire[0]=instance_create(irandom_range(bbox_left, bbox_right), irandom_range(bbox_top, bbox_bottom), o_sfx_fire)
fire[1]=instance_create(irandom_range(bbox_left, bbox_right), irandom_range(bbox_top, bbox_bottom), o_sfx_fire)
fire[2]=instance_create(irandom_range(bbox_left, bbox_right), irandom_range(bbox_top, bbox_bottom), o_sfx_fire)

for(var i=0; i<=2; i++)
	{
	with(fire[i])
		{
		depth=other.depth-1
		sprite_index=s_soldier_fire
		image_index=i
		image_speed=0.2
		}
	}



spawn_parent=0


add_score=30
add_to=noone

hit_timer=0

player=o_controller.player1

ow_p=false

ressurect=true
yplus=0


jumped=false

jumpspeed=5

image_xscale=-1

if(sprite_index==s_simple_soldier_run)
	{
	d_sprite=s_simple_soldier_dead
	}
else
	{
	d_sprite=s_dog_dead
	}



scr_init_standing()


//hazard_touch=noone
target=instance_create(x, y, o_homing_aim)

turnaround_random=100


enemy_action=rocket_soldier.run
enemy_state=enemy_states.airborne
enemy_onscreen=false
hurtbox_created=false
hurtbox_destroyed=false
max_hp=2
hp=max_hp


cone_dir1=300
cone_dir2=330

just_feet=noone


AI_active=false

image_speed=0.2


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
grav=0.2
fric=1
floor_y=0
vortexed=false
vortex_hsp=6
catched_x=0
catched_y=0
//im good at naming variables, trust me

//AI variables

state=states.grounded

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