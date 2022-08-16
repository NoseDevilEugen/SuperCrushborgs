//переменные для перемещения курсора по меню
var move = 0
var vmove = 0
var vmove2 =0

//скрипт для касаний стика геймпада
scr_get_stick_presses()

//ловим единоразовое движение курсора вверх-вниз
move = move-max(keyboard_check_pressed(o_controller.key[o_controller.up_b]), keyboard_check_pressed(o_controller.t_key[o_controller.up_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padu), stick_down_pressed[o_controller.gamepad_slot], 0)
move = move+max(keyboard_check_pressed(o_controller.key[o_controller.down_b]), keyboard_check_pressed(o_controller.t_key[o_controller.down_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padd),stick_up_pressed[o_controller.gamepad_slot], 0)

//ловим единоразовое движение курсора влево-вправо
vmove = vmove-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 0)
vmove = vmove+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 0)

//ловим единоразовое движение курсора второго игрока влево-вправо
vmove2 = vmove2-max(keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padl), stick_left_pressed[o_controller.gamepad_slot2], 0)
vmove2 = vmove2+max(keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padr),stick_right_pressed[o_controller.gamepad_slot2], 0)

//var mp_x, mp_y

//проверяем, движется ли мышь
if(mouse_x!=mp_x || mouse_y!=mp_y)
    {
    mouse_moving=true
    }
    
if(mouse_x==mp_x && mouse_y==mp_y)
    {
    mouse_moving=false
    }


//обновляем координаты мыши
mp_x=mouse_x
mp_y=mouse_y    
    
	
//проверка наведения мыши на пункт меню	
for(i=0; i<array_length(menu); i=i+1)
    {
    if(mouse_moving==true)
        {
		if(o_controller.Yoffset!=0)
			{
	        if(point_in_rectangle(mouse_x, mouse_y+16, 0, (y-(space/2))+(i*space), room_width, (y-(space/2))+((i+1)*space)))
	            {
	            mpos=i        //draw_text(5, y+(i*space), string(mpos))
	            }
			}
		else
			{
			if(point_in_rectangle(mouse_x, mouse_y, 0, (y-(space/2))+(i*space), room_width, (y-(space/2))+((i+1)*space)))
	            {
	            mpos=i        //draw_text(5, y+(i*space), string(mpos))
	            }
			}
        }
    }

//смещаем курсор вверх-вниз по пунктам меню
if(move!=0)
    {
    mpos+=move
    if(mpos<0)
        {
        mpos=array_length(menu)-1
        }
    if(mpos>array_length(menu)-1)
        {
        mpos=0
        }
    }

//проверяем нажатие кнопки подтвеждения \ выбора
var push1
push1 = max(keyboard_check_released(vk_enter), 
mouse_check_button_released(mb_left), 
gamepad_button_check_released(o_controller.gamepad_slot, gp_face1), 
gamepad_button_check_released(o_controller.gamepad_slot, gp_start), 
0)

//если кнопка нажата, то вызываем обработчик меню
if(push1==1)
    {
    scr_menu()
    }

//двигаем курсоры первого и второго игроков влево-вправо

//определяем режим игры (сколько игроков и кто за кого играет)
if(mpos==0)
	{
	o_controller.game_mode=0
	}
else if(mpos==1)
	{
	o_controller.game_mode=1
	}