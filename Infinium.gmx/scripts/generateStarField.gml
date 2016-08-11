///generateStarField(startX,startY,Width,Height,Steps,Percentage);
startX     = argument0;
startY     = argument1;
Width      = argument2;
Height     = argument3;
Steps      = argument4;
Percentage = argument5;



for(xx = startX; xx < Width; xx += Steps){
    for(yy = startY; yy < Height; yy += Steps){

        perc = random_range(1,1000);
        
        if(perc <= Percentage){
            perc2 = irandom_range(1,100);
            
            if(perc2 <= 33){
                tile_add(bgStar32,0,0,32,32,xx,yy,-10);
            } else if(perc2 <= 66 && perc2 > 33){
                tile_add(bgStar16,0,0,16,16,xx,yy,-11);
            } else{
                tile_add(bgStar8,0,0,8,8,xx,yy,-12);
            }
        }
        global.timer++; 
    }
}
