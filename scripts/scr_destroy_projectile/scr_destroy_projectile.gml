function scr_destroy_projectile() {
	if(x<o_camera.screen_left-8
	|| x>o_camera.screen_right+8
	|| y<o_camera.screen_top-8
	|| y>o_camera.screen_bottom+8)
	    {
	    instance_destroy(id, false)
	    }


}
