function instance_in_triangle_duplicated(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	{
	    var x1, y1, x2, y2, obj, dsid, this, that, i, x3, y3
	    x1 = argument0
	    y1 = argument1
	    x2 = argument2
	    y2 = argument3
	    obj = argument4
	    x3=argument5
	    y3=argument6
	    dsid = ds_list_create()
	    this = id
	    with (obj) 
	        {
	        that = id
	        with (this) 
	            {
	            if(point_in_triangle(that.x, that.y, x3, y3, x1, y1, x2, y2))
	                {
	                i = that
	                if (i != noone) ds_list_add(dsid,i)
	                }
	            }
	        }
	    if (ds_list_empty(dsid)) 
	        {
	        ds_list_clear(dsid)
	        ds_list_destroy(dsid)
	        dsid = noone
	        }
	    return dsid
	}



}
