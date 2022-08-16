function scr_main_room_creation_code() {
	//globalvar grid;

	//grid=mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32)
	//mp_grid_add_instances(grid, o_floor, 0)
	//mp_grid_add_instances(grid, o_soldier, 0)

	global.background_music=noone

	enum level_bgm	
		{	
		level1,
		level2,
		level3
		}

	enum states
	    {
	    grounded,   //0
	    airborne,   //1
	    wallcling,
		ceiling,
		dead
	    }
    
	enum primary_actions
	    {
	    //grounded actions
	    idle,
		idle_up,
		idle_diagonal_up,
		idle_diagonal_down,
		idle_down,
	    run,                    //2
		run_up,
		run_down,
		duck,
	    //airborne actions
	    jump,                   //4
	    fall,                   //6
	    dropped,                //7
	    //dash actions
	    twohand,
	    //wallslide actions
	    wallcling,
		wallcling_up,
		wallcling_up_diagonal,
		wallcling_down,
		wallcling_down_diagonal,
		wallmove,
	
		ceiling,
		ceiling_move,
		ceiling_up,
		ceiling_diagonal_up,
		ceiling_down,
		ceiling_diagonal_down,


	    knockback,   //58

	    destroyed,  //
		
		teleport,
		teleport_end,
		cutscene
		
	    }
    
	enum weapon_actions
	    {
	    none,
	    shoot
	    }
	
	enum weapons
		{
		machinegun,
		spreadgun,
		energygun,
		hominggun,
		lasergun
		}
    
	enum enemy_states
	    {
	    grounded,
	    airborne
	    }

	enum enemy_actions
	    {
	    idle,           //0
	    hitstun,        //1
	    run,    //9
	    jump,   //10
	    fall,   //11
	    shot,   //12
	    destroyed,  //13
	    //attack,
	    //jump,
	    //air_attack,
	    //hitstun
	    }
    
	enum rocket_soldier
		{
		run,
		throw_rocket
		}
		
	enum jumper
		{
		ground,
		air,
		ceiling
		}
	
	enum batton_actions
		{
		fly,
		ceiling,
		wall
		}
  
	enum belmont_actions
		{
		idle,
		walk,
		jump,
		fall,
		cross_throw,
		axe_throw,
		diamond_throw,
		charge,
		run,
		destroyed
		}
	
	enum spider_actions
		{
		idle,
		jump,
		jump_ceiling,
		hand_attack,
		destroyed
		}
    
	enum hand_actions
		{
		idle, 
		toss,
		aim, 
		attack,
		stuck,
		back
		}
	
	enum dual_spider_actions
		{
		move,
		shoot_web,
		attack_web,
		return_web,
		destroyed
		}
	
	enum bullet_states
	    {
	    idle,
	    small, 
	    small_destroyed,
	    big,
	    big_destroyed
	    }    
    
	enum joe_actions
		{
		phase1_idle,
		phase1_prejump,
		phase1_jump,
		phase1_land,
		phase2_seq,
		fly,
		shoot
		}
    
	enum worm_actions
		{
		move_horizontal,
		move_vertical,
		jump,
		fall
		}

	enum phantom_actions
		{
		idle,
		jump,
		fall,
		dash,
		kunai_throw,
		fuma_throm,
		upward_attack,
		helmcrusher,
		posthelmcrusher,
		teleport,
		rage
		}
		
	enum font
		{
		a,
		b,
		c,
		d,
		e,
		f,
		g,
		h,
		i,
		j,
		k,
		l,
		m,
		n,
		o,
		p,
		q,
		r,
		s,
		t,
		u,
		v,
		w,
		x,
		y,
		z,
		space
		}
		
	enum shooting_soldier
		{
		idle,
		aim_straight,
		aim_down,
		aim_diagonal_down,
		aim_up,
		aim_diagonal_up,
		jump
		
		}
	
	enum fly_actions
		{
		horizontal,
		vertical
		}
	
	enum jija_actions
		{
		idle,
		chase,
		attack
		}
		
	enum jija2_actions
		{
		sit,
		rise,
		fly,
		land
		}	
		
	enum shield_actions
		{
		idle,
		pain,
		grenade_throw
		}
	
	enum flower_actions
		{
		rise,
		bloom,
		idle
		}
		
	enum gen_actions
		{
		charging,
		attack,
		line,
		broken
		}
	
	enum cannon_states
		{
		moving,
		charging,
		attack
		}
	
	global.enemy_attacks=false

}
