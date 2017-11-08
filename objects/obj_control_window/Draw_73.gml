if (!mouse_area(xx,yy,xx+w,yy+h) or mouse_area(xx+drag_size,yy+drag_size,xx+w-drag_size,yy+h-drag_size)) and !mouse_check_button(mb_left)
{
	drag_mode = ""
}