// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.roomTarget = -1;
global.midTransition = false;

//Called whenever you want to go from one room to another, using any combination of in/out sequences
function TransitionStart(_roomTarget, _typeOut, _typeIn)
	{
	if (!global.midTransition)
		{
		global.midTransition = true
		global.roomTarget = _roomTarget
		TransitionPlaceSequence(_typeOut, o_camera.screen_left, o_camera.screen_top)
		layer_set_target_room(_roomTarget)
		TransitionPlaceSequence(_typeIn, o_camera.screen_left, o_camera.screen_top)
		layer_reset_target_room()
		return true
		}
	else return false
	}

//Places the sequences in the room
function TransitionPlaceSequence(_type, _x, _y)
	{
	if(layer_exists("transition")) 
		{
		layer_destroy("transition")
		}
		
	var _lay = layer_create(-9999,"transition")
	layer_sequence_create(_lay, _x, _y,_type)
	}

//Called as a moment at the end of an "Out" transition sequence
function TransitionChangeRoom()
	{
	room_goto(global.roomTarget)
	}

//Called as a moment at the end of an "In" transition sequence
function TransitionFinished()
	{
	layer_sequence_destroy(self.elementID)
	global.midTransition = false
	}