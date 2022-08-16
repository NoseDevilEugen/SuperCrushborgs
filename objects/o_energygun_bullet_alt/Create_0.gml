/// @description Insert description here
// You can write your code in this editor
onscreen=false
bullet_speed=9
bullet_catched=false
orbit=0
angle=0
closing_speed=0
hor=false
ver=false

explosion_dir[0]=0
explosion_dir[1]=45
explosion_dir[2]=90
explosion_dir[3]=135
explosion_dir[4]=180
explosion_dir[5]=225
explosion_dir[6]=270
explosion_dir[7]=315

firepower=4

hsp=0
vsp=0

if(hsp!=0 && parent.hsp!=0 && sign(hsp)==sign(parent.hsp))
	{
	add_hsp=floor(parent.hsp_final)
	}
else
	{
	add_hsp=0
	}
	
if(vsp!=0 && parent.vsp!=0 && sign(vsp)==sign(parent.vsp))
	{
	add_vsp=floor(parent.vsp)
	}
else
	{
	add_vsp=0
	}

basic_vsp=0

lasting_hsp=0
lasting_vsp=0
sprite_index=s_shinobot_e_bullet
image_speed=0.5

hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false
grav=0.5
//fric=1
floor_y=0

bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left





	
