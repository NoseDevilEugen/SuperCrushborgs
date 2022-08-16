/// @description Insert description here
// You can write your code in this editor
my_next_room=noone
player=o_controller.player1

angle_accelerration = 0
angle_velocity = 0
angle = -30



//distance можно менять чтобы увеличить или уменьшить цепочку маятника
//сам маятник в руме размещается там, где должен быть его якорь
//grenade=true в криэйшен коде румы чтобы он кидал гранаты


grenade=false

distance = 50
velocity_dampening = 1

hp=20

//target=instance_create(x, y, o_homing_aim)

hit_timer=0

sprite_index=s_hole_spawner_closed

image_index=0
image_speed=0.1

dir=1

anchor_x = x
anchor_y = y-10

eyes_exists=false

phase=0

target=instance_create(x, y, o_homing_aim)

debris=true