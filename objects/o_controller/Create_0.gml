gp_num = gamepad_get_device_count()

global.hsp_timer=1

global.cutscene=false

both_players=false

show_hints=1

player1_spawn_x=0
player1_spawn_y=0

player2_spawn_x=0
player2_spawn_y=0

player1_type=o_player
player2_type=o_player

player1_gamepad_slot=noone
player2_gamepad_slot=noone




//show_debug_overlay(true)
screen_left=0
screen_right=0
screen_top=0
screen_bottom=0
screen_width=__view_get( e__VW.WView, view_current )
screen_height=__view_get( e__VW.HView, view_current )
/*
with(all)
	{
	if(object_index==o_floor
	|| object_index==o_one_way_floor
	|| object_index==o_one_way_slope
	|| object_index==o_one_way_slope_mirr
	|| object_index==o_slope_platform
	|| object_index==o_slope_mirror
	|| object_index==o_slope_ceiling
	|| object_index==o_slope_ceiling_mirror
	|| object_index==o_rope
	|| object_index==o_rope_moving
	|| object_index==o_rope_angle
	|| object_index==o_rope_angle_mirror)
		{
		visible=false
		}
	}
*/


//music array test



music_array[level_bgm.level1]=bgm00
music_array[level_bgm.level2]=bgm02
music_array[level_bgm.level3]=bgm05

//sounds array test

sound_array[0]=sfx_bonus
sound_array[1]=sfx_boom
sound_array[2]=sfx_damage
sound_array[3]=sfx_expl
sound_array[4]=sfx_death
sound_array[5]=sfx_pause
sound_array[6]=sfx_shot
sound_array[7]=sfx_spreadgun_shot
sound_array[8]=sfx_laser
sound_array[9]=sfx_superc_laser
sound_array[10]=sfx_boss_hit
sound_array[11]=sfx_shot2
sound_array[12]=sfx_wave
sound_array[13]=sfx_expl_small
sound_array[14]=sfx_soldier_death


gp_timer=60

text_message=false
text_read=""

text_x=0
text_y=0

text_counter=0

application_surface_draw_enable(false)

scr_pos=0
vsync_state=false
AA_state=0
gamepad_number=0

//window_set_size(960, 540)

//window_set_fullscreen(false)

//window_set_size(1000, 600)

MonitorW=display_get_width()


MonitorH=display_get_height()

//Xoffset=(MonitorW-960)/2
//Yoffset=(MonitorH-540)/2



/*
if(MonitorW>=960 && MonitorH>=540)
	{
	surface_resize(application_surface,960,540)
	Xoffset=(MonitorW-960)/2
	Yoffset=(MonitorH-540)/2
	}
*/
sur_w=0
sur_h=0



game_mode=0
//0 is classic
//1 is neo
//2 is classic+neo
//3 is neo+classic
//4 is 2classic
//5 is 2neo
instance_create(x, y, o_camera)

//fucking font!

afterboss_timer=-1

player_count=1

player_switch=180

timer_letter=330

paused=false

cheat_pressed=4

my_current_room=room_main
my_next_room=noone

//сколько кадров висит переход из комнаты в комнату
room_transition_timer=150
room_next_timer=150

scroll_x=true
scroll_y=true

scroll_up=false
scroll_down=false
scroll_left=false
scroll_right=false

//стартовые жизни игрока
player_one_lives=5
player_two_lives=5

//стартовые вепоны
player_one_weapon1=weapons.machinegun
player_one_weapon2=weapons.machinegun
player_one_active=0

player_two_weapon1=weapons.machinegun
player_two_weapon2=weapons.machinegun
player_two_active=0

player_one_score=0
player_two_score=0

player_one_score_hidden=0
player_two_score_hidden=0

weapon_icons[weapons.machinegun]=s_bonus_m
weapon_icons[weapons.spreadgun]=s_bonus_s
weapon_icons[weapons.energygun]=s_bonus_e
weapon_icons[weapons.hominggun]=s_bonus_h
weapon_icons[weapons.lasergun]=s_bonus_l

//названия комнат для отображения на экране транзишона
room_name[room_area_test]="Some kind of lab"
room_name[room_area_level2]="City Ruins"
room_name[room_area_test2]="City ruins"
room_name[room_area_test3]="Construction site"
room_name[room_area_test4]="Death from above"
room_name[room_area_test5]="Where evil lurks"
room_name[room_area_bug_boss]="Bug Boss Stage"
room_name[room_area_dual_spider_boss]="Dual Spider Boss Stage"
room_name[room_area_helicopter_boss]="Helicopter Boss Stage"
room_name[room_area_joe_boss]="Joe Boss Stage"
room_name[room_area_richter_boss]="Richter Boss Stage"
room_name[room_area_waterfall_boss]="Waterfall Boss Stage"
room_name[room_area_pendulum_boss]="Pendulum Boss Stage"
room_name[room_area_phantom_boss]="Phantom Boss Stage"
room_name[room_area_wall_boss]="Wall Boss Stage"
room_name[room_area_mainframe_boss]="Mainframe Boss Stage"

player=o_main_player

player1=noone
player2=noone


//сколько времени висит геймовер
gameover_timer=300

display_reset(0, true)

//промпты геймпада и клавиатуры
scr_populate_keyboard_prompts()
scr_populate_gamepad_prompts()

gamepad_slot=0
gamepad_slot2=1

gamepad_prompts="OTHER"
gamepad_prompts2="OTHER"
     

up_b=0
down_b=1
left_b=2
right_b=3
attack_b=4
jump_b=5
lock_b=6
toggle_b=7
gun_b=8

up_a=9
down_a=10
left_a=11
right_a=12

key[right_b]=ord("D")
key[left_b]=ord("A")

key[jump_b]=ord("K") 
key[lock_b]=ord("L")
key[attack_b]=ord("J")
key[up_b]=ord("W")
key[down_b]=ord("S")
key[toggle_b]=ord("I") 
key[gun_b]=ord("U") 

key[9]=noone

g_key[right_b]=gp_padr
g_key[left_b]=gp_padl
g_key[jump_b]=gp_face1 
g_key[lock_b]=gp_shoulderr
g_key[attack_b]=gp_face3
g_key[up_b]=gp_padu
g_key[down_b]=gp_padd
g_key[toggle_b]=gp_face2 
g_key[gun_b]=gp_shoulderl

g_key[9]=noone

t_key[right_b]=vk_right
t_key[left_b]=vk_left

t_key[jump_b]=vk_numpad2 
t_key[lock_b]=vk_numpad3
t_key[attack_b]=vk_numpad1
t_key[up_b]=vk_up
t_key[down_b]=vk_down
t_key[toggle_b]=vk_numpad5
t_key[gun_b]=vk_numpad4 

t_key[9]=noone

t_g_key[right_b]=gp_padr
t_g_key[left_b]=gp_padl
t_g_key[jump_b]=gp_face1 
t_g_key[lock_b]=gp_shoulderr
t_g_key[attack_b]=gp_face3
t_g_key[up_b]=gp_padu
t_g_key[down_b]=gp_padd
t_g_key[toggle_b]=gp_face2 
t_g_key[gun_b]=gp_shoulderl

t_g_key[9]=noone


descr="No gamepad"
descr2="No gamepad"

volume_sound=1
volume_music=1

//загружаем сохраненные ранее настройки управления
scr_load_binding()

var i=0
for(i=0; i<array_length(o_controller.music_array); i++)
	{
	audio_sound_gain(o_controller.music_array[i], o_controller.volume_music, 0)
	}

var i=0
for(i=0; i<array_length(o_controller.sound_array); i++)
	{
	audio_sound_gain(o_controller.sound_array[i], o_controller.volume_sound, 0)
	}

//show_message(string(display_aa))

Xoffset=0
Yoffset=0
if(scr_pos==0 
|| scr_pos==1
|| scr_pos==2)
	{
	Xoffset=0
	Yoffset=0
	window_set_fullscreen(false)
	window_set_size(480*(scr_pos+1), 270*(scr_pos+1))
	surface_resize(application_surface, 480*(scr_pos+1), 270*(scr_pos+1))
	window_center()
	}
if(scr_pos==3)
	{
	window_set_fullscreen(true)
	if(MonitorW>=960 && MonitorH>=540)
		{
		//window_set_fullscreen(true)
		surface_resize(application_surface,960,540)
		Xoffset=(MonitorW-960)/2
		Yoffset=(MonitorH-540)/2
		}
	if(MonitorW>=1440 && MonitorH>=810)
		{
		surface_resize(application_surface,1440,810)
		Xoffset=(MonitorW-1440)/2
		Yoffset=(MonitorH-810)/2
		}
	if(MonitorW>=1920 && MonitorH>=1080)
		{
		surface_resize(application_surface,1920,1080)
		Xoffset=(MonitorW-1920)/2
		Yoffset=(MonitorH-1080)/2
		}
	//surface_resize(application_surface, 480*scr_pos+1, 270*scr_pos+1)
	}
if(scr_pos==4)
	{
	Xoffset=0
	Yoffset=0
	window_set_fullscreen(true)
	surface_resize(application_surface, display_get_width(), display_get_height())
	}



//blood particle system create
p_blood_sys = part_system_create()

//particle settings
p_blood = part_type_create()
part_type_shape(p_blood, pt_shape_disk)
part_type_size(p_blood, 0.50, 0.80, -0.1, 0)

part_type_color1(p_blood, 255)
part_type_alpha2(p_blood, 0.8, 0.2)
part_type_speed(p_blood, 1,3,0,0)
part_type_direction(p_blood, 0,359,0,0)
part_type_gravity(p_blood, 0.3, 270)
part_type_blend(p_blood, 1)
part_type_life(p_blood, 15,30)
part_system_depth(p_blood, depth-1)



