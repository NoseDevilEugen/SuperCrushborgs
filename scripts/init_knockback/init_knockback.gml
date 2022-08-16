function init_knockback() {
	
	//твоё нелюбимое: проверяем столкновение "скелета" с угрозой из списка угроз
	//если коллизия есть, то запускаем скрипт получения дамага
	//проверка выполняется with skelet, но скрипт выполняется из with other то есть от объекта-игрока
	//лист хазардов (всего что наносит урон при столкновении) находится в creation code скелета o_skelet
	if(primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport
	&& invul_time<=0
	&& state!=states.dead)
		{
		with(skelet)
			{
			for(i=0; i<array_length(enemy_list); i++)
				{
				if(place_meeting(x, y, enemy_list[i]))
					{
					//show_message(object_get_name(instance_place(x, y, enemy_list[i]).object_index))
					with(other)
						{
						scr_take_damage()
						}
					}
				}
			}
		}
}
