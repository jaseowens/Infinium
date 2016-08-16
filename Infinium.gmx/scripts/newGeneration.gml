///newGeneration(Width,Height,MapSize);
Width      = argument0;
Height     = argument1;
//Will eventually be an input of small, medium, large and will decide on how many galaxies
Size       = argument2;


amountOfGalaxies = irandom_range(2,20);

for(i = 0; i < amountOfGalaxies; i++){
    xx = irandom_range(-Width/2,Width/2);
    yy = irandom_range(-Height/2,Height/2);
    
    p = instance_create(xx,yy,oSolarSystem);
    p.number = i;
    global.array[i] = p;
    
}

