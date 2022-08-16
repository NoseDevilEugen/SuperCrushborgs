/// @description Insert description here
// You can write your code in this editor

depth=depth+1

timer=360

p_blood_sys = part_system_create()

//particle settings
p_blood = part_type_create()

part_type_shape(p_blood, pt_shape_pixel)

//part_type_sprite(p_blood, s_blink_particle, false, false, false)
part_type_size(p_blood, 1, 1, 0, 0)
part_type_scale(p_blood, 1, 1)
part_type_color3(p_blood, c_orange, c_orange, c_orange)
//part_type_alpha1(p_blood, 0.8)
part_type_speed(p_blood, 1,2,0,0)
part_type_direction(p_blood, 70,100,0,0)
part_type_gravity(p_blood, 0.1, 270)
part_type_blend(p_blood, false)
part_type_life(p_blood, 30, 60)
part_system_depth(p_blood, depth-1)
part_alpha=1

//emitter?
p_blood_emit=part_emitter_create(p_blood_sys)