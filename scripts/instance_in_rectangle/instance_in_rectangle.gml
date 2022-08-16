function instance_in_rectangle(argument0, argument1, argument2, argument3, argument4) {
	{
	    var x1, y1, x2, y2, obj, dsid, this, that, i
	    x1 = argument0
	    y1 = argument1
	    x2 = argument2
	    y2 = argument3
	    obj = argument4
	    dsid = ds_list_create()
	    this = id
	    with (obj) {
	        that = id
	        with (this) {
	            if(point_in_rectangle(id.x, id.y, x1, y1, x2, y2))
	                {
	                i = instance_position(x, y, that)
	                if (i != noone) ds_list_add(dsid,i)
	                }
	        }
	    }
	    if (ds_list_empty(dsid)) {
	        ds_list_clear(dsid)
	        ds_list_destroy(dsid)
	        dsid = noone
	    }
	    return dsid
	}



}
