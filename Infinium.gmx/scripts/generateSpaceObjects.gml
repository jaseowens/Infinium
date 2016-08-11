///generateStarField(startX,startY,Width,Height,Steps,Percentage,Object);
startX     = argument0;
startY     = argument1;
Width      = argument2;
Height     = argument3;
Steps      = argument4;
Percentage = argument5;
Object     = argument6;

for(xx = startX; xx < Width; xx += Steps){
    for(yy = startY; yy < Height; yy += Steps){

        perc = random_range(1,1000);
        
        if(perc <= Percentage){
            instance_create(xx,yy,Object);
        }
        global.timer++; 
    }
}
