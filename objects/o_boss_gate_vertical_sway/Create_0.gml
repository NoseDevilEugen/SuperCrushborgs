/// @description Insert description here
// You can write your code in this editor
event_inherited()
y_start=ystart
hsp=0
vsp=0

r_side=noone
l_side=noone
b_side=noone
t_side=noone


r_hazard=noone
l_hazard=noone
b_hazard=noone
t_hazard=noone

destructible=false

push_hor=false
push_ver=false

timer=0

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}
	
my_tilemap=layer_tilemap_create("Tiles_1", x, y, TestTile, sprite_width/16, sprite_height/16)
var layerID
layerID=layer_tilemap_get_id("Tiles_1")
var datatile
var i, j
for(i=0; i<sprite_width/16; i++)
	{
	for(j=0; j<sprite_height/16; j++)
		{
		datatile[i][j]=tilemap_get(layerID, (x+(i*16))/16, (y+(j*16))/16)
	
		tilemap_set(my_tilemap, datatile[i][j], i, j)
		//tilemap_set(my_tilemap, 4, i, j)
		}
	}