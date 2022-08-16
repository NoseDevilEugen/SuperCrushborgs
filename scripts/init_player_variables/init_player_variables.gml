function init_player_variables() {
	//initialize variables
	//afterimage=-1
	//ds_enemies=ds_list_create()
	
	this_gamepad_slot=-1
	this_gamepad_arr=-1
	this_keyboard_arr=-1
	
	
	shit=false
	
	jt_timer=0

	p_blood_sys = part_system_create()

	//particle settings
	p_blood = part_type_create()

	part_type_sprite(p_blood, s_blink_particle, false, false, false)
	part_type_size(p_blood, 1, 1, 0, 0)
	part_type_scale(p_blood, 1, 1)
	part_type_color3(p_blood, c_white, c_white, c_white)
	//part_type_alpha1(p_blood, 0.8)
	part_type_speed(p_blood, 0,0,0,0)
	part_type_direction(p_blood, 0,359,0,0)
	part_type_gravity(p_blood, -0.1, 270)
	part_type_blend(p_blood, false)
	part_type_life(p_blood, 10, 20)
	part_system_depth(p_blood, depth-1)
	part_alpha=1

	//emitter?
	p_blood_emit=part_emitter_create(p_blood_sys)

	text_message=false
	
	dead_counter=0

	block_stuck=false
	ow_p=false
	
	ow_slope=noone
	if(instance_exists(o_safe_spawner))
		{
		safe_x=instance_nearest(x, y, o_safe_spawner).x
		safe_y=instance_nearest(x, y, o_safe_spawner).y
		}
	else
		{
		safe_x=x
		safe_y=y
		}
		
	last_state=states.grounded
	
	last_xscale=1
	
	//pantheons_number=instance_number(o_soldier_spawner)
	
	teleport_charge=0
	teleport_cooldown=0
	
	teleport_h_direction=0
	teleport_v_direction=0
	
	teleport_direction=0
	
	teleport_speed=9
	
	my_name="<- CLASSIC ->"
	
	//order=instance_number(o_main_player)
	
	exp_charge=60
	threshold=0.5
	for (var i=0; i<o_controller.gp_num; i++)
		{
	    stick_left_pressed[i] = false
	    stick_right_pressed[i] = false
	    stick_up_pressed[i] = false
	    stick_down_pressed[i] = false

	    stick_left_held[i] = false
	    stick_right_held[i] = false
	    stick_up_held[i] = false
	    stick_down_held[i] = false

	    stick_left_released[i] = false
	    stick_right_released[i] = false
	    stick_up_released[i] = false
	    stick_down_released[i] = false
		}
	
	init_control()
	
	explosion_dir[0]=0
	explosion_dir[1]=45
	explosion_dir[2]=90
	explosion_dir[3]=135
	explosion_dir[4]=180
	explosion_dir[5]=225
	explosion_dir[6]=270
	explosion_dir[7]=315
	
	add_hsp=0
	add_vsp=0
	
	boss_gate=noone
	
	pass_dir=0
	
	
	point_a_x=0
	point_b_x=0
	
	point_a_y=0
	point_b_y=0
	
	//кол-во жизней берем из контроллера, нужно для перехода меж уровнями
	//my_lives=o_controller.player_one_lives
	
	//переменные отвечают за принудительный скролл экрана
	scroll_up=false
	scroll_down=false
	scroll_left=false
	scroll_right=false
	
	//переменные отвечают за простой скролл экрана
	scroll_x=true
	scroll_y=true
	
	//период неуязвимости
	invul_time=149
	
	//последний блок на котором стоял игрок и на нём было безопасно
	safe_block=noone
	
	//тип потолка, веревка или блок
	ceiling_obj=noone
	//слоты оружия
	/*
	if(id==o_controller.player1)
		{
		my_lives=o_controller.player_one_lives
		weapon_slot[0]=o_controller.player_one_weapon1
		weapon_slot[1]=o_controller.player_one_weapon2
		}
	else if(id==o_controller.player2)
		{
		my_lives=o_controller.player_two_lives
		weapon_slot[0]=o_controller.player_two_weapon1
		weapon_slot[1]=o_controller.player_two_weapon2
		}
*/

	//активный слот
	active_slot=0

	//иконки для отображения наверху
	weapon_icons[weapons.machinegun]=s_bonus_m
	weapon_icons[weapons.spreadgun]=s_bonus_s
	weapon_icons[weapons.energygun]=s_bonus_e
	weapon_icons[weapons.hominggun]=s_bonus_h
	weapon_icons[weapons.lasergun]=s_bonus_l
	
	//добавочная скорость для стреляния, не помню нужна ли, но наверное да
	add_bullet_vsp=0

	//цепляешься за блок или веревку
	ceiling_block=false
	ceiling_rope=false

	air_hsp=0

	last_move=0
	
	//движение по слоупам
	slope_down=false
	slope_up=false
	
	//движение по наклонной веревке
	ceiling_rope_angle=false
	
	//кулдаун выстрелов для типов оружия
	bullet_recharge[weapons.machinegun]=0
	bullet_recharge[weapons.spreadgun]=0
	bullet_recharge[weapons.energygun]=0
	bullet_recharge[weapons.hominggun]=0
	bullet_recharge[weapons.lasergun]=0
	
	wallspeed=2
	ceilingspeed=2

	//image xscale и image yscale но если серьезно то множитель ширины и высоты спрайта
	image_xscale=1
	image_yscale=1

	//view
	__view_set( e__VW.XView, 0, x - __view_get( e__VW.WView, 0 ) / 2 )
	__view_set( e__VW.YView, 0, y - __view_get( e__VW.HView, 0 ) / 2 )
	
	//переменные для отображения худа без добра
	toggle_combolist=false
	toggle_control=false
	keyboard_active=true
	gamepad_active=false

	ascend=false
	on_slope=false
	//slope_height=13

	recoil_timer=0

	recoil_ground=false

	//dashjump_corner_check=false

	dash_air=false
	
	//направление полета пуль для стреляния
	bullet_dir=0
	
	//направление стреляния спредгана
	spreadgun_dir[0]=0
	spreadgun_dir[1]=0
	spreadgun_dir[2]=0
	spreadgun_dir[3]=0
	spreadgun_dir[4]=0

	
	//скорость пуль
	bullet_speed=20
	
	//стартовая позиция пуль
	start_bullet_x=0
	start_bullet_y=0
	//dash_once=false
	
	//переменные для коллизий one-way платформ
	oneway_col=false
	feet_col=false
	
	//переменная для движения по слоупам
	yplus=0
	yminus=0
	yplusplus=0
 
	can_fall=true

	split_combined=0

	start_hp=20
	hp=start_hp
	
	//переменные для one-way
	whole_body=noone
	just_feet=noone
	//new_feet=noone
	
	previous_sprite=sprite_index
	timer=0
	//гравитация бессердечная ты сука
	grav=0.4
	//горизонтальная скорость и связанные с ней переменные нужные для взаимодействия с движущимися блоками
	hsp=0
	hsp_carry=0
	hsp_pushed=0
	hsp_final=0
	pushed=false
	pushed_hor=false
	pushed_ver=false
	col=false
	col_v=false
	//start_angle=0   
	
	//вертикальная скорость
	vsp=0
	vsp_carry=0
	//vsp_final=0
	add_wallslide_vsp=0
	jumps=0
	jumpsmax=1
	jumpspeed=8
	//walljumpspeed=12
	runspeed=2
	movespeed=runspeed
	//splitspeed=3
	//from_rope=0

	no_jump=0
	//facing=0


	dash_wind=false
	attack_timer=0
	last_attack=0
	collision_enemy=false
	dash_timer=0
	//invul=false
	buffer=false

	ceiling_acceleration=0
	ceiling_acceleration_stop=0

	//hookshot swing
	//rope_distance=0
	//angle_accelerration = 0;
	//angle_velocity = 0;
	//angle = 0;
	//velocity_dampening = 0.99;
	//anchor_x = x
	//anchor_y = y



	//diagonal_up=false
	//diagonal_down=false

	dashspeed=0
	
	//везде где есть анимации я ставлю 0.2 скорости
	image_speed=0.2
	
	//начальные стейт и действие
	state=states.grounded
	primary_action=primary_actions.idle
	//transition_done=0

	
	dashstop_x=0
	dashstop_y=0
	//position=-1

	//wallhsp=1
	
	
	
	//переменные для спрыгивания со стены и потолка
	jump_off=false
	jump_off_ceiling=false


	//lock_on=false // no lockon in 2d gaming, ever
	combo_stopper=0
	is_attacking=false
	hook_stopper=false
	combo_counter=0
	aircombo_allowed=true
	hookshot_allowed=true


	//init sprites
	init_sprites()

	//оффсеты маски но я не помню зачем они господи помоги мне
	bbox_top_offset=abs(y-bbox_top)
	bbox_bottom_offset=abs(y-bbox_bottom)
	bbox_left_offset=abs(x-bbox_left)
	bbox_right_offset=abs(x-bbox_right)

	snd_vol=0.5



	//init zero action word
	//перечисление стейтов и экшенов для их отображения где бы то ни было
	    state_word[states.grounded]="Grounded"
	    state_word[states.airborne]="Airborne"
	    state_word[states.wallcling]="Wallcling"
		state_word[states.ceiling]="ceiling"

	    p_action_word[primary_actions.idle]="Idle"
	    p_action_word[primary_actions.idle_up]="Idle up"
	    p_action_word[primary_actions.idle_down]="Idle down"
	    p_action_word[primary_actions.idle_diagonal_up]="Diag up"
		p_action_word[primary_actions.idle_diagonal_down]="Diag down"
		p_action_word[primary_actions.run]="Run"
		p_action_word[primary_actions.run_up]="Run up"
		p_action_word[primary_actions.run_down]="Run down"
		p_action_word[primary_actions.duck]="Duck"
	    p_action_word[primary_actions.jump]="Jump"
	    p_action_word[primary_actions.fall]="Fall"
	    p_action_word[primary_actions.dropped]="Dropped"
	    p_action_word[primary_actions.twohand]="Twohand stance"
	    p_action_word[primary_actions.wallcling]="Wallcling"
		p_action_word[primary_actions.wallmove]="Wallmove"
		p_action_word[primary_actions.wallcling_up]="Wallcling up"
		p_action_word[primary_actions.wallcling_down]="Wallcling down"
		p_action_word[primary_actions.wallcling_up_diagonal]="Wallcling diagonal up"
		p_action_word[primary_actions.wallcling_down_diagonal]="Wallcling diagonal down"
		p_action_word[primary_actions.ceiling]="ceiling"
		p_action_word[primary_actions.ceiling_move]="ceiling_move"
		p_action_word[primary_actions.ceiling_up]="ceiling up"
		p_action_word[primary_actions.ceiling_down]="ceiling down"
		p_action_word[primary_actions.ceiling_diagonal_up]="ceiling diagonal up"
		p_action_word[primary_actions.ceiling_diagonal_down]="ceiling diagonal down"
	
	
	
	    p_action_word[primary_actions.knockback]="Knockback"
	    p_action_word[primary_actions.destroyed]="Destroyed"
		p_action_word[primary_actions.teleport]="Teleport"
		p_action_word[primary_actions.teleport_end]="Teleport end"

	//таскаем худ за собой для отображения фигни уже не помню зачем    
	//hud=instance_create(x, y, o_main_hud)  

	//тот самый скелет который реагирует на пули и коллизии с врагами
	skelet=instance_create(x, y, o_player_skelet)
	with(skelet)
		{
		my_player=other.id
		}
	

	
	//set_starting_array(object_index)
	
	
	
	

	//тоже лист врагов
	enemy_list[0]=o_boss_parent

	//сей скрипт отвечает за эпичное положение "1-пиксель-над-землей" я молодец
	scr_init_standing()
}
