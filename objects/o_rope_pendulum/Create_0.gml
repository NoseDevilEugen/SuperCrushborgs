/// @description Insert description here
// You can write your code in this editor

//движущаяся веревка, сиречь ракета
//при столкновении с o_floor развернётся и полетит в обратном направлении, 
//можно размещать в вертикальных шахтах для платформинг

//если разместить веревку на объекте o_wheel_rope то она будет вращаться вокруг него

//направление вращения зависит от xscale объекта o_wheel_rope

angle_accelerration = 0
angle_velocity = 0

//можно изменить начальный angle чтобы изменить угол качения маятника
angle = 0

//distance можно менять чтобы увеличить или уменьшить цепочку маятника
//сам маятник в руме размещается там, где должен быть его якорь
distance = 100
velocity_dampening = 1


//target=instance_create(x, y, o_homing_aim)

hit_timer=0

anchor_x = x
anchor_y = y-10

hsp=2
vsp=0

angle=0
orbit=128

x=floor(x)
y=floor(y)

xdelta=0
ydelta=0

up=true
down=false

counter=0

updown=false

if(irandom_range(0,1)==0)
	{
	updown=false
	}
else
	{
	updown=true
	}