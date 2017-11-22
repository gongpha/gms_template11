#define facc
//facc(a,b,c,x)
//ax^2 + bx + c
var str,firstnum;

totals = 1

str = ""
firstnum = 1

ffaca = 2 
find = 0
//Stage 1: Find First's factors
for(i=1;i<=argument0/2;i+=1)
 {
  if (argument0 mod i) = 0
   {
    ffaca[find] = i
    ffacb[find] = argument0/i
    find += 1
   }
 }
ffacac = find
totals*=find*2 
//Stage 2: Find Third's Factors (signed)

find = 0
if sign(argument2) = 1
 { 
  for(i=1;i<=argument2/2;i+=1)
   {
    if (argument2 mod i) = 0
     {
      ffacc[find] = i
      ffacd[find] = argument2/i
      find += 1
      ffacc[find] = -i
      ffacd[find] = -(argument2/i)
      find += 1    
     }
   }
 }
else
 { 
  for(i=1;i<=abs(argument2/2);i+=1)
   {
    if (abs(argument2) mod i) = 0
     {
      ffacc[find] = -i
      ffacd[find] = abs(argument2)/i
      find += 1
      ffacc[find] = i
      ffacd[find] = -(abs(argument2)/i)
      find += 1    
     }
   }
 }
ffaccc = find
totals*=find

//Stage 3: FIND!

for(i=0;i<ffacac;i+=1)
 {
  for(j=0;j<ffaccc;j+=1)
   {    
    //(2x+1)(3x+3)
    a1 = ffacc[j] * ffacb[i]
    a2 = ffaca[i] * ffacd[j]
    a3 = a1 + a2
    if a3 = argument1
     {
      //We found answer now!
      return "(" + string(ffaca[i]) + argument3 + "+" + string(ffacc[j]) + ")(" +string(ffacb[i]) + argument3 + "+" + string(ffacd[j]) + "}";
      exit;
     }
   }  
 }
 
 

