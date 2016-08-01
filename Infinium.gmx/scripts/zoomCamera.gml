///zoomCamera(amount);

var amount = 1 + argument0;

if(view_wview[0] <= 2560 && amount < 1){
    oController.zoomMod = 0;
    exit;
}

if(view_wview[0] >= 10240 && amount > 1){
    oController.zoomMod = 0;
    exit;
}

var offx = abs(view_wview[0]*amount - view_wview[0]);
var offy = abs(view_hview[0]*amount - view_hview[0]);

view_wview[0] *= amount;
view_hview[0] *= amount;

if(amount < 1){
    view_xview[0] += offx/2;
    view_yview[0] += offy/2;   
} else if(amount > 1){
    view_xview[0] -= offx/2;
    view_yview[0] -= offy/2;    
} 

