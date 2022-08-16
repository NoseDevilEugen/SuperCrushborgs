function scr_take_damage() {
	//как происходит дамаг
	audio_play_sound(o_controller.sound_array[4], 10, false)
	ceiling_rope=false
	ceiling_block=false
	ceiling_acceleration=0
	ceiling_acceleration_stop=0
	ceiling_obj=noone
	//бессмертие
	//my_lives=my_lives-1
	weapon_slot[active_slot]=weapons.machinegun
	image_index=0
	//last_state=state
	state=states.airborne
	primary_action=primary_actions.knockback
	vsp=-6
	hsp=2*-image_xscale
	dead_counter=0
}
