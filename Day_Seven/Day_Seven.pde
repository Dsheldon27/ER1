void setup(){ //runs once at startup
  size(200,200); //size of square
  background(255); //background color
}

void draw(){ //runs over and over
  ellipseMode(CENTER);
  rectMode(CENTER); //drawing rect from center
  
  //body
  stroke(0); //stroke color
  fill(150); //color of body
  rect(100,100,20,100); //(x1,y1,x2,y2);
  
  //head
  fill(255); //color of fill
  ellipse(100,70,60,60); //(x1,y1,x2,y2);
  
  //eyes
  fill(0); //color of fill
  ellipse(81,70,16,32); //(x1,y1,x2,y2);
  ellipse(119,70,16,32); //(x1,y1,x2,y2);
  
  //legs
  stroke(0); //stroke color
  line(90,150,80,160); //(x1,y1,x2,y2);
  line(110,150,120,160); //(x1,y1,x2,y2);
}