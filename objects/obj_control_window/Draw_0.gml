xv = view_xview[0]
yv = view_yview[0]
xx = xv+x
yy = yv+y
//Draging Script
if mouse_area(xx+5,yy+5,xx+w-5,yy+35)
{
    if mouse_check_button_pressed(mb_left)
    {
        x_old = mouse_x - xx
	    y_old = mouse_y - yy
	    drag = true
	}
	if mouse_check_button_released(mb_left)
	{
	    drag = false
	}
}

if drag
{
	xx = mouse_x - x_old
	yy = mouse_y - y_old
}
//Shadow
draw_set_color(c_black)
draw_set_alpha(0.4)
draw_roundrect(x+5,y+1,xx+w-5,yy+h+5,0)
//Background
draw_set_alpha(1)
draw_set_color(c_gray)
draw_roundrect(x,y,xx+w,yy+h,0)
//Caption
draw_rectangle_color(xx+5,yy+5,xx+w-5,yy+35,c_black,c_white,c_white,c_black,0)
draw_box(img_window_cornermask,0,xx+5,yy+5,10,w-9,31,c_gray,1)
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(fnt_window_caption)
draw_text(xx+10,yy+20,caption)
//Border
//draw_set_color(make_color_rgb(100,100,100))
//draw_roundrect(x,y,xx+w,yy+h,1)
//Footer
draw_sprite(img_window_hint_bottom,0,xx+(w/2),yy+h-3)
//Corner
draw_sprite(img_window_hint_corner,0,xx+w-3,yy+h-3)


//----------Selecting dragmode----------//

if mouse_check_button_pressed(mb_left)
{
	//Top
	if mouse_area(xx+drag_size,yy,xx+w-drag_size,yy+drag_size)
	{
		drag_mode = "top"
	}
	//Bottom
	if mouse_area(xx+drag_size,yy+h-drag_size,xx+w-drag_size,yy+h)
	{
		drag_mode = "bottom"
	}
	//Left
	if mouse_area(xx,yy+drag_size,xx+drag_size,yy+h-drag_size)
	{
		drag_mode = "left"
	}
	//Right
	if mouse_area(xx+w-drag_size,yy+drag_size,xx+w,yy+h-drag_size)
	{
		drag_mode = "right"
	}
}
//----------Resize Action----------//
switch(drag_mode)
{
	case "left":
		//
	break;
	
	case "right":
		w = mouse_x - x
	break;
	
	case "top":
		//
	break;
	
	case "bottom":
		h = mouse_y - y
	break;
}

script_execute(content)