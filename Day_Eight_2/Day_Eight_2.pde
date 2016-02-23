void setup(){
  size(200,200); //size of box
}

void draw(){
  background(255); //background color
  stroke(0); //stoke color
  line(100,0,100,200); //(x1,y1,x2,y2);
  line(0,100,200,100); //(x1,y1,x2,y2);
  
  noStroke();
  fill(0);
  
  if(mouseX < 100 && mouseY < 100) {
    rect(0,0,100,100);
    
  } else if(mouseX > 100 && mouseY < 100){
    rect(100,0,100,100);
    
  } else if(mouseX < 100 && mouseY > 100){
    rect(0,100,100,100);
    
  } else if(mouseX > 100 && mouseY < 100){
    rect(100,0,100,100);
    
  } else if(mouseX > 100 && mouseY > 100){
    rect(100,100,100,100);
  }
}