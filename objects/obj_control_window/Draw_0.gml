xv = view_xview[0]
yv = view_yview[0]
xx = xv+x
yy = yv+y
//Shadow
draw_set_color(c_black)
draw_set_alpha(0.4)
draw_roundrect(x+10,y+1,xx+w-10,yy+h+10,0)
//Background
draw_set_color(c_gray)
draw_roundrect(x,y,xx+w,yy+h,0)
