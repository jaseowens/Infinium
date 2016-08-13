///showMeteor(boolean);
///true  => show
///false => hide
var count = 0;
t = argument0;
if(!t){
    with(oMeteor){
        if(image_alpha >= 0.01){
            image_alpha -= 0.01;
        }
    }
    show_debug_message("false");
    count++;
    if(count >= 20){
        instance_deactivate_object(oMeteor);
    }
} else if(t) {
    show_debug_message("true");
    instance_activate_object(oMeteor);
    with(oMeteor){
        if(image_alpha <= 0.99){
            image_alpha+=0.01;
        }
    }   
}
