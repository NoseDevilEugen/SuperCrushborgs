/// @description Insert description here
// You can write your code in this editor
timer=360

anchor_x=x
anchor_y=y

angle_accelerration = 0
angle_velocity = 0
angle = -90
distance = 175
velocity_dampening = 0.5

angle_accelerration = -.05 * dcos(angle)
     
angle_velocity += angle_accelerration
angle += angle_velocity
     
//angle_velocity *= velocity_dampening;

x = anchor_x + lengthdir_x(distance, angle)
y = anchor_y + lengthdir_y(distance, angle)