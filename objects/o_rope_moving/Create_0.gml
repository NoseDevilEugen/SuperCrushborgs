/// @description Insert description here
// You can write your code in this editor

//движущаяся веревка, сиречь ракета
//при столкновении с o_floor развернётся и полетит в обратном направлении, 
//можно размещать в вертикальных шахтах для платформинг

//если разместить веревку на объекте o_wheel_rope то она будет вращаться вокруг него

//направление вращения зависит от xscale объекта o_wheel_rope

hsp=1
vsp=0

overspeed=false

destructible=true

angle=0
orbit=48

x=floor(x)
y=floor(y)

xdelta=0
ydelta=0

wheel_rotation=1

wheel=false

wheel_x=x
wheel_y=y

up=true
down=false

counter=irandom_range(0,359)

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}

rocket=false

updown=false

if(irandom_range(0,1)==0)
	{
	updown=false
	}
else
	{
	updown=true
	}