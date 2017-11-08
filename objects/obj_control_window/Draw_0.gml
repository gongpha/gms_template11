if drag
{
	x = mouse_x - x_old
	y = mouse_y - y_old
	X = x+15
	Y = y+45
}
w = clamp(w,minw,maxw)
h = clamp(h,minh,maxh)
if mouse_check_button(mb_left) and !(minw = w and minh = h and maxw = w and maxh = h)
{
	switch(drag_mode)
	{
		case "left":
			window_set_cursor(cr_size_we)
			w = (x+w)-mouse_x
			w = clamp(w,minw,maxw)
			x = mouse_x
			X = x+15
			break;
	
		case "right":
			window_set_cursor(cr_size_we)
			w = mouse_x - x
			w = clamp(w,minw,maxw)
		break;
	
		case "top":
			window_set_cursor(cr_size_ns)
			h = (y+h)-mouse_y
			h = clamp(h,minh,maxh)
			y = mouse_y
			Y = y+45
		break;
	
		case "bottom":
			window_set_cursor(cr_size_ns)
			h = mouse_y - y
			h = clamp(h,minh,maxh)
		break;
	
		case "bottomleft":
			window_set_cursor(cr_size_nesw)
			h = mouse_y - y
			h = clamp(h,minh,maxh)
			w = (x+w)-mouse_x
			w = clamp(w,minw,maxw)
			x = mouse_x
			X = x+15
		break;
	
		case "bottomright":
			window_set_cursor(cr_size_nwse)
			w = mouse_x - x
			w = clamp(w,minw,maxw)
			h = mouse_y - y
			h = clamp(h,minh,maxh)
		break;
	
		case "topleft":
			window_set_cursor(cr_size_nwse)
			w = (x+w)-mouse_x
			w = clamp(w,minw,maxw)
			x = mouse_x
			h = (y+h)-mouse_y
			h = clamp(h,minh,maxh)
			y = mouse_y
			X = x+15
			Y = y+45
		break;
	
		case "topright":
			window_set_cursor(cr_size_nesw)
			if h > minh and h < maxh
			{
				h = (y+h)-mouse_y
			}
			y = mouse_y
			w = mouse_x - x
			w = clamp(w,minw,maxw)
			Y = y+45
		break;
	}
}
xv = view_xview[0]
yv = view_yview[0]
xx = xv+x
yy = yv+y

//Draging Script
if mouse_area(xx+5,yy+5,xx+w-5,yy+35)
{
    if mouse_check_button_pressed(mb_left)
    {
        x_old = mouse_x - x
	    y_old = mouse_y - y
	    drag = true
	}
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


if !drag
{
	//Top
	if mouse_area(xx+drag_size,yy,xx+w-drag_size,yy+drag_size)
	{
		window_set_cursor(cr_size_ns)
		drag_mode = "top"
	}
	//Bottom
	if mouse_area(xx+drag_size,yy+h-drag_size,xx+w-drag_size,yy+h)
	{
		window_set_cursor(cr_size_ns)
		drag_mode = "bottom"
	}
	//Left
	if mouse_area(xx,yy+drag_size,xx+drag_size,yy+h-drag_size)
	{
		window_set_cursor(cr_size_we)
		drag_mode = "left"
	}
	//Right
	if mouse_area(xx+w-drag_size,yy+drag_size,xx+w,yy+h-drag_size)
	{
		window_set_cursor(cr_size_we)
		drag_mode = "right"
	}
	//Left-top
	if mouse_area(xx,yy,xx+drag_size,yy+drag_size)
	{
		window_set_cursor(cr_size_nwse)
		drag_mode = "topleft"
	}
	//Right-top
	if mouse_area(xx+w-drag_size,yy,xx+w,yy+drag_size)
	{
		drag_mode = "topright"
		window_set_cursor(cr_size_nesw)
	}
	//Left-bottom
	if mouse_area(xx,yy+h-drag_size,xx+drag_size,yy+h)
	{
		drag_mode = "bottomleft"
		window_set_cursor(cr_size_nesw)
	}
	//Right-bottom
	if mouse_area(xx+w-drag_size,yy+h-drag_size,xx+w,yy+h)
	{
		drag_mode = "bottomright"
		window_set_cursor(cr_size_nwse)
	}
}
if mouse_check_button_released(mb_left)
{
	drag = false
}
//----------Resize Action----------//


script_execute(content)
//----------Debug----------//
if debug{
	//TOP
	draw_rectangle_color(xx+drag_size,yy,xx+w-drag_size,yy+drag_size,c_red,c_red,c_red,c_red,1)
	//BOTTOM
	draw_rectangle_color(xx+drag_size,yy+h-drag_size,xx+w-drag_size,yy+h,c_red,c_red,c_red,c_red,1)
	//LEFT
	draw_rectangle_color(xx,yy+drag_size,xx+drag_size,yy+h-drag_size,c_red,c_red,c_red,c_red,1)
	//RIGHT
	draw_rectangle_color(xx+w-drag_size,yy+drag_size,xx+w,yy+h-drag_size,c_red,c_red,c_red,c_red,1)
	//LEFT-TOP
	draw_rectangle_color(xx,yy,xx+drag_size,yy+drag_size,c_red,c_red,c_red,c_red,1)
	//RIGHT-TOP
	draw_rectangle_color(xx+w-drag_size,yy,xx+w,yy+drag_size,c_red,c_red,c_red,c_red,1)
	//LEFT-BOTTOM
	draw_rectangle_color(xx,yy+h-drag_size,xx+drag_size,yy+h,c_red,c_red,c_red,c_red,1)
	//RIGHT-BOTTOM
	draw_rectangle_color(xx+w-drag_size,yy+h-drag_size,xx+w,yy+h,c_red,c_red,c_red,c_red,1)

	//TEXT
	draw_set_color(c_black)
	draw_set_font(fnt_small_deb)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_text(xx,yy-20,"Window v.11 (" + string(UPDATE_DATE_DAY) + " " + month_to_string(UPDATE_DATE_MONTH) + " " + string(UPDATE_DATE_GYEAR) + ")")
	draw_set_valign(fa_bottom)
	draw_set_halign(fa_right)
	draw_text(xx+w-10,yy+h-10,"x = "+string(x)+"\ny = "+string(y)+"\nw = "+string(w)+"\nh = "+string(h)+"\nmaxw = "+string(maxw)+"\nmaxh = "+string(maxh)+"\nminw = "+string(minw)+"\nminh = "+string(maxh)+"\ndrag = "+string(drag)+"\ndrag_mode = "+string(drag_mode))
}