///oldPlayerMovement();

//Point towards mouse
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Space is our 'gas' button
if(keyboard_check(vk_space)){

    //Here is checking if the player has quickly moved the mouse to a new angle that is greater than 45 degrees
    //from where player is currently thrusting, if so set the thrust to zero so that the player can not snap to the new 
    //direction
    if (image_angle > thrustDirection + 45 ) || (image_angle < thrustDirection - 45){
        if(thrust > 0){
            if(image_angle > 5) && image_angle < 355{
                thrust = 0;
            }
        }
    }
    
    //This is an easy way to max out the speed of both at 100. While also refraining from getting stuck
    //at an angled movement. I.E. saying if hsp > 10 -> hsp = 10 produces problems. 
    hsp *= 0.90;
    vsp *= 0.90;
    
    //Add to thrust based on how far the mouse is from the player
    thrust += distance_to_point(mouse_x,mouse_y)/5000;
    if(thrust > 10){
        thrust = 10;
    }
    
    //Now set thrust direction to the image_angle
    thrustDirection = image_angle;
    
    //Add to hsp, vsp 
    hsp +=  lengthdir_x(thrust,thrustDirection);
    vsp +=  lengthdir_y(thrust,thrustDirection);
}

//Speed Correction//
//This is just to make it so that when player is at an extremely low speed set to 0. Allows for more controlled movement.
if(hsp != 0){
    if(hsp > 0)&&(hsp < 0.1){
        hsp = 0;
    }
    if(hsp < 0)&&(hsp > -0.1){
        hsp = 0;
    }
}
if(vsp != 0){
    if(vsp > 0)&&(vsp < 0.1){
        vsp = 0;
    }
    if(vsp < 0)&&(vsp > -0.1){
        vsp = 0;
    }
}
//

//Easy way to calculate a total speed. but because hsp and vsp can both be negs, take the absolute value of them.
totalSpeed = abs(hsp) + abs(vsp);


