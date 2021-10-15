Creature[] creatures = new Creature[20];
Food[] food = new Food [30];
public void setup() {
  size(800,800);
  spawnCreatures();
  spawnFood();
}

public void draw() {
  background(220);

   
   
   
    
    for (int z = 0; z < food.length; z++) {
  if (food[z].active == true) {
      food[z].show(); 
  } 
  for (int i = 0; i < creatures.length; i++) {
   creatures[i].eat(food[z]);
    if (food[z].active == false){
 //print("false") ;
}
    
  }
}
  for (int i = 0; i < creatures.length; i++) {
  if(creatures[i].cActive == true) {
    creatures[i].show();
creatures[i].move();  
}
  
//}
//for (int x = 0; i < creatures.length; x++){
  creatures[i].drain();
    
//}
}

 }//end of draw
   
public void spawnCreatures() {
   for (int i = 0; i < creatures.length; i++) {
     
     creatures[i] = new Creature(200,200);
   }
}

public void spawnFood() {
  for (int x = 0; x < food.length; x++) {
    int n = (int)random(800);
    int m = (int)random(800);

    food[x] = new Food(n,m);
  } 
}  
