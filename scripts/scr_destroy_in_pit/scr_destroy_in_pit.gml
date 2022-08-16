function scr_destroy_in_pit() {
	if(x<o_camera.camera_border_left-300 
	|| x>o_camera.camera_border_right+300
	|| y>o_camera.camera_border_bottom+300)
	    {
	    instance_destroy(id)
	    }
}
