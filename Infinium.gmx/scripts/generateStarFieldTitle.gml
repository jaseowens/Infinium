///generateStarFieldTitle();
startX = 0;
startY = 0;
for(xx = startX; xx < view_wview[0]; xx += 32){
    for(yy = startY; yy < view_hview[0]; yy += 32){
    
        perc = random_range(1,100);
        if(perc <= 5){
        
            perc2 = irandom_range(1,100);
            if(perc2 <= 33){
                tile_add(bgStar16,0,0,16,16,xx,yy,5);
                
            } else if(perc2 <= 66 && perc2 > 33){
                tile_add(bgStar8,0,0,8,8,xx,yy,10);
            } else{
                tile_add(bgStar4,0,0,4,4,xx,yy,15);
            }
        } 
    }
}
