/// @description Insert description here
// You can write your code in this editor
tilemap_clear(my_tilemap, 0)

for(var i=0; i<array_length(my_blocks); i++)
	{
	if(instance_exists(my_blocks[i]))
		{
		instance_destroy(my_blocks[i], true)
		}
	}
	
