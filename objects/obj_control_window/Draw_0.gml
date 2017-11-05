xv = view_xview[0]
yv = view_yview[0]
xx = xv+x
yy = yv+y
//Shadow
draw_set_color(c_black)
draw_set_alpha(0.4)
draw_roundrect(x+5,y+1,xx+w-5,yy+h+5,0)
//Background
draw_set_alpha(1)
draw_set_color(c_gray)
draw_roundrect(x,y,xx+w,yy+h,0)
//Caption
draw_rectangle_color(xx+5,yy+5,xx+w-5,yy+35,c_white,c_black,c_white,c_black,0)
draw_box(img_window_cornermask,0,xx+5,yy+5,10,xx+w-5,yy+35,c_white,1)