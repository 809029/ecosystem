public class Creature {
  int b = (int)random(15);
  public PVector pos, vel;
  public int speed = b;
  public float hp = 100.0;
  public final int SIZE = 25;
  public final color COLOR = color(30,30,200); 
  public boolean cActive = true;
  int k = second()-1;
  
  public Creature(int x, int y) {
    pos = new PVector(x,y);
 }
  
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    vel =  PVector.random2D().mult(speed);
    
    pos.add(vel);
  }
  
  public void eat(Food f) {
     double dist = PVector.sub(this.pos,f.pos).mag();
    if (dist <= this.SIZE / 2 + f.SIZE / 2) {
    hp = hp +25;
   // print("a");
    f.active = false;
    if (hp > 100) {
     hp = 100; 
     
} 
  }
    }
   public void drain(){
  if(k+1 == second()){
      k = k+1;
hp = hp - 3 ;
if(hp <= 0) {
 this.cActive = false;
}
print(hp);
  }
  


}
  
  public void attack(Creature c) {
    
  }  
  }
  
 
