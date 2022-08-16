function scr_whole_movement() {
	//horizontal speed without dash and with dash (reworked to walljump)
	//hsp=floor(hsp)
	
	//на земле скорость равна направлению * абсолют скорости передвижения
	if(state==states.grounded
	&& primary_action!=primary_actions.idle_diagonal_down
	&& primary_action!=primary_actions.idle_diagonal_up
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.duck
	&& jump_off_ceiling==false
	&& primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.cutscene) 
	    {
	    hsp = move*movespeed
	    }             

	//в воздухе персонаж движется в направлении последнего нажатия (лево или право), без нажатия на месте
	if(state!=states.airborne
	&& state!=states.dead)
		{
		last_move=0
		}
	
	//вот, множим последнее нажатие на скорость передвижения
	if(state==states.airborne
	&& jump_off_ceiling==false
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.cutscene) 
	    {
	    hsp = last_move*movespeed
	    } 
	
	//стоим на месте когда лок_он зажат
	if(key_lock && state==states.grounded)
		{
		hsp=0
		}
	
	//запрыгивание со стены наверх, на пол
	if(jump_off==true)
		{
		hsp=movespeed*sign(image_xscale)
		}
	
	//запрыгивание с потолка на стену
	if(jump_off_ceiling==true)
		{
		hsp=ceiling_acceleration
		}
	
	//передвижение по потолку чуть медленнее чем бег
	if(state==states.ceiling
	&& primary_action==primary_actions.ceiling_move)
		{
		hsp=move*(ceilingspeed)
		}
	
	//скорость передвижения по стене
	if(state==states.wallcling)
		{
		var platform=instance_place(x+image_xscale, y, o_floor)
		hsp=0
		
		if(primary_action==primary_actions.wallmove)
			{
			if(key_up && !key_down)
				{
				if(instance_exists(platform))
					{
					vsp=-wallspeed+round(platform.vsp)
					}
				}
			if(!key_up && key_down)
				{
				if(instance_exists(platform))
					{
					vsp=wallspeed+round(platform.vsp)
					}

				}
			}
		else
			{
			if(instance_exists(platform))
				{
				vsp=round(platform.vsp)
				}

			}
		}
}
