///draw_box(sprite,subimg,x,y,border,w,h,color,alpha)
///@param {real} sprite
///@param {real} index
///@param {real} x
///@param {real} y
///@param {real} border
///@param {real} w
///@param {real} h
///@param {real} color
///@param {real} alpha
/* Draw a sprite with the center and sides streched. */
var sprite,subimg,X,Y,w,h,border,color,alpha;
sprite=argument0
subimg=argument1
X=argument2
Y=argument3
border=argument4
w = argument5 - border * 2
h = argument6 - border * 2
color = argument7
alpha = argument8
draw_set_alpha(1)
var sprw,sprh;
sprw = sprite_get_width(sprite)
sprh = sprite_get_height(sprite)
draw_sprite_part_ext(sprite,subimg,          0,          0,       border,       border,         X,         Y,                1,                1,color,alpha)
draw_sprite_part_ext(sprite,subimg,sprw-border,          0,       border,       border,X+border+w,         Y,                1,                1,color,alpha)
draw_sprite_part_ext(sprite,subimg,          0,sprh-border,       border,       border,         X,Y+border+h,                1,                1,color,alpha)
draw_sprite_part_ext(sprite,subimg,sprw-border,sprh-border,       border,       border,X+border+w,Y+border+h,                1,                1,color,alpha)
draw_sprite_part_ext(sprite,subimg,     border,          0,sprw-border*2,       border,  X+border,         Y,w/(sprw-border*2),                1,color,alpha)
draw_sprite_part_ext(sprite,subimg,     border,sprh-border,sprw-border*2,       border,  X+border,Y+border+h,w/(sprw-border*2),                1,color,alpha)
draw_sprite_part_ext(sprite,subimg,          0,     border,       border,sprh-border*2,         X,  Y+border,                1,h/(sprh-border*2),color,alpha)
draw_sprite_part_ext(sprite,subimg,sprw-border,     border,       border,sprh-border*2,X+border+w,  Y+border,                1,h/(sprh-border*2),color,alpha)
draw_sprite_part_ext(sprite,subimg,     border,     border,sprw-border*2,sprh-border*2,  X+border,  Y+border,w/(sprw-border*2),h/(sprh-border*2),color,alpha)
