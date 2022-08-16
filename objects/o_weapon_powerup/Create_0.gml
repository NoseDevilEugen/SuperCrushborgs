/// @description Insert description here
// You can write your code in this editor
//паверап - это один объект. хранит в себе значение подбираемого вепона

//рандомный вепон при создании
weapon=0

state=states.grounded

ow_p=false

just_feet=noone
whole_body=noone


unpick_timer=0

vanish_timer=-1

hsp=0
vsp=0

grav=0.25

hsp_carry=0
hsp_pushed=0
hsp_final=0
pushed=false
pushed_hor=false
pushed_ver=false

state=states.airborne

s_array[weapons.machinegun]=s_bonus_m
s_array[weapons.lasergun]=s_bonus_l
s_array[weapons.spreadgun]=s_bonus_s
s_array[weapons.hominggun]=s_bonus_h
s_array[weapons.energygun]=s_bonus_e

//спрайт для отображения

	
bbox_top_offset=abs(y-bbox_top)
bbox_bottom_offset=abs(y-bbox_bottom)
bbox_left_offset=abs(x-bbox_left)
bbox_right_offset=abs(x-bbox_right)