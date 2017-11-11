///@description Convert Original to GML ($00FF00 >> green)
///@param color Color($XXxxXX)
return ((argument0 & $FF) << 16) | (argument0 & $FF00) | ((argument0 >> 16) & $FF)