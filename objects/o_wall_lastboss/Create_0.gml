/// @description Insert description here
// You can write your code in this editor

my_next_room=room_area_test3
image_xscale=1
image_yscale=1

b_dest=instance_create(bbox_left, bbox_bottom-96, o_barrel_destroyer)

target=noone

cannon_count=0

cannon_reset=-1
cannon_timer=cannon_reset

eye=instance_create_layer(x+16, y+(sprite_height/2)-16, "depth_player", o_wall_lastboss_eye)
bomb_hole=instance_create_layer(x+(sprite_width-sprite_width/3)-8, y+sprite_height/4, "depth_player", o_wall_lastboss_bomb_throw)

sub=1
