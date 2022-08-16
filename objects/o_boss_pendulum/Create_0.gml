/// @description Insert description here
// You can write your code in this editor

my_next_room=room_area_wall_boss
angle_accelerration = 0
angle_velocity = 2.29
angle = -90
distance = 175
velocity_dampening = 0.5

eye[0]=instance_create(x, y, o_boss_pendulum_eye)
eye[1]=instance_create(x, y, o_boss_pendulum_eye)
eye[2]=instance_create(x, y, o_boss_pendulum_eye)
eye[3]=instance_create(x, y, o_boss_pendulum_eye)
eye[4]=instance_create(x, y, o_boss_pendulum_eye)

s_index[45]=s_pendulum_main_45
s_index[135]=s_pendulum_main_135
s_index[225]=s_pendulum_main_225
s_index[315]=s_pendulum_main_315

with(eye[0])
	{
	angle=0
	parent=other.id
	}
with(eye[1])
	{
	angle=72
	parent=other.id
	}
with(eye[2])
	{
	angle=144
	parent=other.id
	}
with(eye[3])
	{
	angle=216
	parent=other.id
	}
with(eye[4])
	{
	angle=288
	parent=other.id
	}

hp=600

distance_x=0
distance_y=0

sticky=0.2

//afterimage1=instance_create(x, y, o_boss_pendulum_afterimage)
//afterimage2=instance_create(x, y, o_boss_pendulum_afterimage)

add_score=1000
add_to=noone

stuck_timer=0
stuck_timer_reset=30

ricoshet=7
current_dir=0
save_dir=0
bullet_speed=7

spray_timer=600
spray_timer_reset=600
spray_dir=-1

shockwave=false


target=instance_create(x, y, o_homing_aim)

hit_timer=0

anchor_x = x
anchor_y = y

angle_accelerration = -.05 * dcos(angle)
     
angle_velocity += angle_accelerration
angle += angle_velocity
     
//angle_velocity *= velocity_dampening;

x = anchor_x + lengthdir_x(distance, angle)
y = anchor_y + lengthdir_y(distance, angle)

eyes_exists=false

s_spikes_array[0]=s_pendulum_spikes1
s_spikes_array[1]=s_pendulum_spikes2
s_spikes_array[2]=s_pendulum_spikes3
s_spikes_array[3]=s_pendulum_spikes4
s_spikes_array[4]=s_pendulum_spikes5
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