hsp=0
vsp=0

push=false
push_hor=false
push_ver=false
hor_push_ds=-1
ver_push_ds=-1
timer=0

x=floor(x)
y=floor(y)

destructible=false
//image_xscale=-1

if(image_xscale==1)
    {
    line_down_x=bbox_left
    line_down_y=bbox_bottom
    line_up_x=bbox_right
    line_up_y=bbox_top    
    }
    
if(image_xscale==-1)
    {
    line_down_x=bbox_right
    line_down_y=bbox_bottom
    line_up_x=bbox_left
    line_up_y=bbox_top    
    }

