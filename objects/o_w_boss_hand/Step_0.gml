/// @description Insert description here
// You can write your code in this editor



//angle=angle+0.2

// Orbital motion


counter=(counter+2) mod 360
counter_hsp=(counter_hsp+1) mod 360
counter_vsp=(counter_vsp+2) mod 360

if(counter_hsp==0 && counter_vsp==0)
	{
	if(change==false)
		{
		change=true
		}
	else
		{
		change=false
		dir=dir*-1
		}
	}

if(change==true)
	{
	val1=dsin_array[floor(counter_hsp)]*(60*dir)
	val2=dsin_array[floor(counter_vsp)]*(40)
	}
else
	{
	val1=dsin_array[floor(counter_hsp)]*(40*dir)
	val2=dsin_array[floor(counter_vsp)]*(60)
	}
//val2=clamp(val2, -60, -30)

hsp=(xstart + (val1-xprevious))	//простое движение влево-вправо от xstart
vsp=(ystart + (val2-yprevious)) 

x=x+hsp

	
y=(y+(vsp))

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}