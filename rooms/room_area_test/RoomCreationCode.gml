

o_camera.camera_border_left=0
o_camera.camera_border_top=2048-270
o_camera.camera_border_right=6240
o_camera.camera_border_bottom=2048

/*
o_camera.camera_border_left=0
o_camera.camera_border_top=880
o_camera.camera_border_right=6240
o_camera.camera_border_bottom=880+270
*/

/*
instance_destroy(o_simple_soldier)
instance_destroy(o_simple_soldier_sp)
instance_destroy(o_blob_soldier_puddle)
instance_destroy(o_shooting_soldier_sp)
*/

//instance_deactivate_region(0,0, 6240, 1200, true, false)
instance_activate_object(o_controller)
instance_activate_object(o_pause)
instance_activate_object(o_camera)