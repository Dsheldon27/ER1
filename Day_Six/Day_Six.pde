float r; //setting up variable
float g; //setting up variable
float b; //setting up variable
float a; //setting up variable

float diam; //setting up variable
float x; //setting up variable
float y; //setting up variable


void setup(){ //runs once
  size(200,200); //size of square
  
 background(255); //color of square
  
}

void draw(){ //constintly runs it
  r = random(255); //color of variable 
  g = random(255); //color of variable
  b = random(255); //color of variable
  a = random(255); //color of variable
  diam = random(255); //color of variable
  x = random(width); //randomizes location
  y = random(height); //randomizes location
  
  //background(255);
  
  noStroke(); //no outline
  fill(r,g,b,a); //color within the next shape
  ellipse(x,y,diam,diam); //first circle
  
  //delay(500);
  
}