///showGalaxy(boolean);
///true  => show
///false => hide
var count = 0;
t = argument0;
if(!t){
    with(oSolarSystem){
        if(image_alpha >= 0.01){
            image_alpha -= 0.01;
        }
    }
    count++;
    if(count >= 20){
        instance_deactivate_object(oSolarSystem);
    }
} else if(t) {
    instance_activate_object(oSolarSystem);
    with(oSolarSystem){
        if(image_alpha <= 0.99){
            image_alpha+=0.01;
        }
    }   
}
