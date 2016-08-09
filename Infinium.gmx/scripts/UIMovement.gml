///UIMovement();
xx = mouse_x;
yy = mouse_y;

vw = view_wview[0]/2;
vh = view_hview[0]/2;

//Mouse is on right side of screen
if(xx >= vw){
    //Mouse is on right side, and top half
    if(yy <= vh){
        return "topRight";
    //Mouse is on right side, and bottom half
    }else if(yy > vh){
        return "botRight";
    }
//Mouse is on left side of screen
} else if(xx < vw){
    //Mouse is on left side, and top half
    if(yy <= vh){
        return "topLeft";
    }
    //Mouse is on left side, and bottom half
    else if(yy > vh){
        return "botLeft";
    }
    
}




