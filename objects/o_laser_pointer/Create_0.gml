/// @description Insert description here
// You can write your code in this editor

line_index=0

p_blood_sys = part_system_create()

//particle settings
p_blood = part_type_create()

part_type_shape(p_blood, pt_shape_pixel)
//part_type_sprite(p_blood, s_blink_particle, false, false, false)
//part_type_size(p_blood, 1, 1, 0, 0)
part_type_scale(p_blood, 1, 1)
part_type_color3(p_blood, c_red, c_red, c_red)
//part_type_alpha1(p_blood, 0.8)
part_type_speed(p_blood, 0,0,0,0)
part_type_direction(p_blood, 0,359,0,0)
part_type_gravity(p_blood, 0.25, 270)
part_type_blend(p_blood, false)
part_type_life(p_blood, 5, 10)
part_system_depth(p_blood, depth-1)
part_alpha=1

write_hsp=0
write_vsp=0

//emitter?
p_blood_emit=part_emitter_create(p_blood_sys)

bullet_speed=14

subimage=false

counter=0

web_subimage_arr[0]=0
web_subimage_arr[1]=1
web_subimage_arr[2]=2
web_subimage_arr[3]=3
web_subimage_arr[4]=4
web_subimage_arr[5]=5
web_subimage_arr[6]=6
web_subimage_arr[7]=7
web_subimage_arr[8]=8
web_subimage_arr[9]=9


subimage_arr[0]=0
subimage_arr[1]=1
subimage_arr[2]=2
subimage_arr[3]=3
subimage_arr[4]=4
subimage_arr[5]=5
subimage_arr[6]=6
subimage_arr[7]=7
subimage_arr[8]=8
subimage_arr[9]=9

my_spider=noone

start_x=x
start_y=y

hsp=0
vsp=0

onscreen=false

connected=false

sprite_index=s_laser_pointer
mask_index=s_laser_pointer

sprite_web=s_dual_spider_web_white