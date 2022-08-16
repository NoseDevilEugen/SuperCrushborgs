/// @description Insert description here
// You can write your code in this editor

//yscale 1 это вниз, -1 это вверх

//спрайт объекта
sprite_index=s_fire_hazard

hsp=0
vsp=0

//откуда огонь вырывается
anchor_x=x
anchor_y=y

//максимальная длина, нужно задавать в криэйшен коде инстанса в руме
max_length=0
//target=instance_create(x, y, o_homing_aim)

//таймер максимального положения (большая полоса)
max_timer=60

//таймер минимального положения (не бьет если наступить)
min_timer=60

grow=true


phase=0

debris=true