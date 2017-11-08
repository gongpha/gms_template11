/// @description Check a mouse location is in a case.
/// @param X x
/// @param Y y
/// @param W w
/// @param H h
if ((mouse_x > argument0) and (mouse_y > argument1) and (mouse_x < argument2) and (mouse_y < argument3))
 {
  return 1;
  exit;
 }
 else
 {
  return 0;
  exit;
 }
