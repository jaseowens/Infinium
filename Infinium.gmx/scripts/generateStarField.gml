///generateStarField(startX,startY);
startX = argument0;
startY = argument1;
for(xx = startX; xx < 20480; xx += 64){
    for(yy = startY; yy < 11520; yy += 64){
    
        perc = random_range(1,1000);
        if(perc <= 10){
        
            perc2 = irandom_range(1,100);
            if(perc2 <= 33){
                tile_add(bgStar32,0,0,32,32,xx,yy,-10);
                instance_create(xx,yy,oMeteor);
            } else if(perc2 <= 66 && perc2 > 33){
                tile_add(bgStar16,0,0,16,16,xx,yy,-11);
            } else{
                tile_add(bgStar8,0,0,8,8,xx,yy,-12);
            }
        } 
    }
}
