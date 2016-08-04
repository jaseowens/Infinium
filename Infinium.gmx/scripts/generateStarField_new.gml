///generateStarFieldTitle();
startX = 0;
startY = 0;
for(xx = startX; xx < view_wview[0]; xx += 32){
    for(yy = startY; yy < view_hview[0]; yy += 32){
    
        perc = random_range(1,100);
        if(perc <= 10){
        
            perc2 = irandom_range(1,100);
            if(perc2 <= 33){
                tile_add(bgStar32,0,0,32,32,xx,yy,-10);
                
            } else if(perc2 <= 66 && perc2 > 33){
                tile_add(bgStar16,0,0,16,16,xx,yy,-11);
            } else{
                tile_add(bgStar8,0,0,8,8,xx,yy,-12);
            }
        } 
    }
}
