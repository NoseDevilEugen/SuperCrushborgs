/// @description Insert description here
// You can write your code in this editor
angle_accelerration = 0
angle_velocity = 0

head=noone

//можно изменить начальный angle чтобы изменить угол качения маятника
angle = -30

AI_active=false

hp=20

//distance можно менять чтобы увеличить или уменьшить цепочку маятника
//сам маятник в руме размещается там, где должен быть его якорь
distance = 100
velocity_dampening = 1


target=instance_create(x, y, o_homing_aim)

hit_timer=0

anchor_x = x
anchor_y = y-10

eyes_exists=false

/*
eye[0]=instance_create(x, y, o_boss_pendulum_eye)
eye[1]=instance_create(x, y, o_boss_pendulum_eye)
eye[2]=instance_create(x, y, o_boss_pendulum_eye)
eye[3]=instance_create(x, y, o_boss_pendulum_eye)
eye[4]=instance_create(x, y, o_boss_pendulum_eye)


with(eye[0])
	{
	angle=0
	parent=other.id
	timer_shot1=120
	}
with(eye[1])
	{
	angle=72
	parent=other.id
	timer_shot1=240
	}
with(eye[2])
	{
	angle=144
	parent=other.id
	timer_shot1=360
	}
with(eye[3])
	{
	angle=216
	parent=other.id
	timer_shot1=480
	}
with(eye[4])
	{
	angle=288
	parent=other.id
	timer_shot1=600
	}
*/
phase=0

debris=true


chain=instance_create_layer(x, y, "depth_player", o_pendulum_line)
with(chain)
	{
	w = sprite_get_height(s_pendulum_chain_small)-10
	anchor_x = other.x
	anchor_y = other.y-10
	}

