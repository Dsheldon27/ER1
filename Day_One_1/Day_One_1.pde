int circleX = 0; //delcare variable and assign value to circleX
int circleY = 100; //declare varibale and assign value to circleY

void setup(){ // run setup once
  size(200,200); //size of screen
}
void draw(){
  //background(255); //"background" color 
  stroke(0); // circle outline color
  fill(175); //circle inside color 
  ellipse(circleX, circleY,75,50); //draw circle 
  //ellpse(X position, Y position, radius X, radius Y)
  
  //circleX = circleX + 1; // incrementing varible + 1 or + 2,3,4...
  circleX++;
}