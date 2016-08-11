///meteorActivate(boolean);
///true  => activate
///flase => deactivate
var count = 0;
if(true){
    with(oMeteor){
        image_alpha-=0.05;
    }
    count++;
    if(count >= 20){
        instance_deactivate_object(oMeteor);
    }
} else {
    instance_activate_object(oMeteor);
    with(oMeteor){
        if(image_alpha<1){
            image_alpha+=0.05;
        }
    }   
}
