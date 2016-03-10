float arms = 100;
float lav = 140;
float speed = 0;
float gravity = 0.1;


void setup(){ //runs once at startup
  size(640,360); //size of square
}

void draw(){ //runs over and over
  background(255); //background color
     fill(175);
  stroke(0);
  
  float c1 = map(mouseX, 0, width, 0, 255);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  lav = lav + speed;
  speed = speed+gravity;
  if(lav > 200){
    speed = speed * -0.95;
    lav = 200;
}
  translate(200, lav);
  
   //body
  stroke(0); //stroke color
  fill(c1,176,23,31); //color of body
  triangle(125,125,100,50,20,100); //(x1,y1,x2,y2);
  
  //head
  fill(255); //color of fill
  ellipse(100,70,60,60); //(x1,y1,x2,y2);
  
  //eyes
  fill(0); //color of fill
  ellipse(100,70,16,32); //(x1,y1,x2,y2);
  
  
  //legs
  stroke(c1); //stroke color
  line(90,110,80,160); //(x1,y1,x2,y2);
  line(110,100,120,160); //(x1,y1,x2,y2);
}