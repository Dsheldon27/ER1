Car myCar; // declaring car object as global variable

void setup(){
  size(640,360);
  myCar = new Car();
}
void draw(){
  background(255);
  myCar.display();
  myCar.move();
}
class Car{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car(){ //constructor, seting variables
  c = color(175);
  xpos = width/2;
  ypos = height/2;
  xspeed = 1;
  }
  void display(){ //function 
  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(xpos,ypos,20,10);
  }
  void move(){ //function
  xpos = xpos + xspeed;
  if(xpos > width){
    xpos = 0;
    }
  }
}