sprite_index=s_barrier_spawner_1
image_index=0
image_speed=0.2

hsp=0
vsp=0

hit_timer=0

hp=10

target=noone

line=instance_create(x+35*image_xscale, y+35*image_yscale, o_electric_line)

line.sprite_index=s_main_teleport

line.bbox_y1=line.bbox_top
line.bbox_y2=line.bbox_bottom
line.bbox_x1=line.bbox_left
line.bbox_x2=line.bbox_right

