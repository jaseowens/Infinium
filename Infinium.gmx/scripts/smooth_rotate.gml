///smooth_rotate(angle,dir,rotspeed); 
/*
Rotates angle smoothly towards dir with the given speed.

angle - Angle to rotate
dir - The angle to turn to
rotspeed - Rotating speed

Script by Fede-lasse, and icuurd12b42 for sin() help
*/
if (argument0 == argument1) {
  return argument1;
}
if (abs(((((argument0-argument1) mod 360)+540) mod 360)-180) >= 179) {
  return argument0+1;
}

return argument0+(sin(degtorad(argument1-argument0))*argument2);
