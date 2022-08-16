line.x=x+35*image_xscale
line.y=y+35*image_yscale

line.image_xscale=image_xscale
line.image_yscale=image_yscale

if(line.image_xscale==1)
    {
    line.bbox_x1=line.bbox_left
    line.bbox_x2=line.bbox_right
    }
if(line.image_xscale==-1)
    {
    line.bbox_x1=line.bbox_right
    line.bbox_x2=line.bbox_left
    }

if(line.image_yscale==1)
    {
    line.bbox_y1=line.bbox_top
    line.bbox_y2=line.bbox_bottom
    }
if(line.image_yscale==-1)
    {
    line.bbox_y1=line.bbox_bottom
    line.bbox_y2=line.bbox_top
    }


if(image_index<8 || image_index>14)
    {
    line.sprite_index=s_main_teleport
    }
else
    {
    line.sprite_index=s_electric_line
    line.image_index=image_index
	
	if(collision_line(line.bbox_x1, line.bbox_y1, line.bbox_x2, line.bbox_y2, o_player_skelet, false, false)
	&& collision_line(line.bbox_x1, line.bbox_y1, line.bbox_x2, line.bbox_y2, o_player_skelet, false, false).my_player.invul_time<=0
	&& collision_line(line.bbox_x1, line.bbox_y1, line.bbox_x2, line.bbox_y2, o_player_skelet, false, false).my_player.state!=states.dead
	&& collision_line(line.bbox_x1, line.bbox_y1, line.bbox_x2, line.bbox_y2, o_player_skelet, false, false).my_player.primary_action!=primary_actions.knockback
	&& collision_line(line.bbox_x1, line.bbox_y1, line.bbox_x2, line.bbox_y2, o_player_skelet, false, false).my_player.primary_action!=primary_actions.destroyed
	&& collision_line(line.bbox_x1, line.bbox_y1, line.bbox_x2, line.bbox_y2, o_player_skelet, false, false).my_player.primary_action!=primary_actions.teleport)
		{
		with(collision_line(line.bbox_x1, line.bbox_y1, line.bbox_x2, line.bbox_y2, o_player_skelet, false, false).my_player)
			{
			scr_take_damage()
			}
		}
	
    }
    
if(place_meeting(x, y, o_floor))
    {
    hsp=instance_place(x, y, o_floor).hsp
    vsp=instance_place(x, y, o_floor).vsp
    }
    
x=x+hsp
y=y+vsp

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, noone)
	}
	

