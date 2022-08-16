
//hsp здесь отвечает за скорость самого конвеера
//положительный сдвигает вправо, отрицательный влево
//sprite_index=s_block_conveyor
hsp=1
vsp=0
push=true
push_hor=false
push_ver=false
timer=0

destructible=false

spr_l=s_block_conveyor_l
spr_m=s_block_conveyor_m
spr_r=s_block_conveyor_r


image_speed=-0.5

//get mask offset
bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)

