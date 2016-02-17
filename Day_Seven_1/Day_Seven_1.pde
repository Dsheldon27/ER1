void setup(){ //runs once at startup
  size(200,200); //size of square
}

void draw(){ //runs over and over
background(255);

  ellipseMode(CENTER);
  rectMode(CENTER); //drawing rect from center
  
  translate(mouseX,mouseY);
  
  //body
  stroke(0); //stroke color
  fill(150); //color of body
  rect(0,0,20,100); //(x1,y1,x2,y2);
  
  //head
  fill(255); //color of fill
  ellipse(0,-30,60,60); //(x1,y1,x2,y2);
  
  //eyes
  fill(0); //color of fill
  ellipse(-19,-30,16,32); //(x1,y1,x2,y2);
  ellipse(19,-30,16,32); //(x1,y1,x2,y2);
  
  //legs
  stroke(0); //stroke color
  line(-10,50,-20,60); //(x1,y1,x2,y2);
  line(10,50,20,60); //(x1,y1,x2,y2);
}