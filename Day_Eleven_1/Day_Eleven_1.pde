//Gravity 
float x = 320; 
float y = 0; 
float speed = 0; //speed of jump
float gravity = 0.1;

void setup(){
  size(640,360); //size of box
}

void draw(){
  background(255); // background color
  fill(random(255),random(255),random(255)); // fill random colors
  stroke(0); // stroke color
  rectMode(CENTER);
  rect(x,y,100,100); //rectangle size
  //drop the bouncy box
  y = y + speed;
  speed = speed + gravity;
  //reverse speed when reach bottom 
  if(y > height){
  speed = speed * -0.95;
  y = height;
  }
}