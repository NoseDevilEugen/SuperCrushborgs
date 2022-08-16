/// @description Insert description here
// You can write your code in this editor

spawn_grenades=true

y_start=ystart

launch_arr=noone	//массив спавнеров гранат
var i=0
n=round((bbox_right-bbox_left)/64)-1 //кол-во спавнеров над блоком
//show_message(string(n))
timer_n=30*(n) //базовое максимальное значение таймера гранат

/*
//создаем и перемешиваем массив множителей таймера
var list = ds_list_create()
for (var i=1; i<n; i++) 
	{
	list[| i] = i;
	}
ds_list_shuffle(list)
*/

//создаем спавнеры, присваиваем каждому стартовое значение таймера (30*неповторяющийся рандомный множитель) и базовое максимальное (для ритмичности)
/*
for(i=1; i<n; i++)
	{
	launch_arr[i]=instance_create(bbox_left+(64*i), o_camera.screen_top-100, o_crawl_fire_launch)
	with(launch_arr[i])
		{
		
		launch_timer=(30*list[| i])
		reset_timer=other.timer_n
		}
	}
//утечка памяти уходи
ds_list_destroy(list)
*/
hsp=0
vsp=0



box_alpha=1




timer=0

exploding=false
exploding_timer=10

my_blocks=[]


var _list=ds_list_create()
var _num = instance_place_list(x, y, o_floor, _list, false);

if(_num>0)
	{
	for(var i=0; i<_num; i++)
		{
		my_blocks[i]=_list[| i]
		}
	}
ds_list_destroy(_list)

my_tilemap=layer_tilemap_create("Tiles_2", x, y, level4_blocks, sprite_width/16, sprite_height/16)
var layerID
layerID=layer_tilemap_get_id("Tiles_1")
var datatile
var i, j
for(i=0; i<sprite_width/16; i++)
	{
	for(j=0; j<(sprite_height/16); j++)
		{
		datatile[i][j]=tilemap_get(layerID, (x+(i*16))/16, ((y+(j*16))/16))
	
		tilemap_set(my_tilemap, datatile[i][j], i, j)
		
		//tilemap_set(my_tilemap, 4, i, j)
		}
	}
	

layer=layer_get_id("instances_lava")	


var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}