/// @description Insert description here
// You can write your code in this editor
//sprite_index=noone
parent=noone
image_speed=0
image_index=0

timer=60
dust=false

p_blood_sys = part_system_create()

//particle settings
p_blood = part_type_create()


tele_hsp=0
	
//part_type_sprite(p_blood, pt_shape_pixel, false, false, false)
part_type_shape(p_blood, pt_shape_pixel)
part_type_size(p_blood, 1, 1, 0, 0)
part_type_scale(p_blood, 1, 1)
part_type_color3(p_blood, c_gray, c_gray, c_gray)
//part_type_alpha1(p_blood, 0.8)
part_type_speed(p_blood, 0,0,0,0)
part_type_direction(p_blood, 0,359,0,0)
part_type_gravity(p_blood, 0.1, 135)
part_type_blend(p_blood, false)
part_type_life(p_blood, 10, 20)
part_system_depth(p_blood, depth-1)
part_alpha=1

//emitter?
p_blood_emit=part_emitter_create(p_blood_sys)

my_left=bbox_left
my_right=bbox_right
my_top=bbox_top
my_bottom=bbox_bottom

my_offset_left=sprite_get_bbox_left(sprite_index)
my_offset_top=sprite_get_bbox_top(sprite_index)
my_offset_right=sprite_get_bbox_right(sprite_index)
my_offset_bottom=sprite_get_bbox_bottom(sprite_index)


//my_sprite_left=
//my_sprite_right=bbox_right
