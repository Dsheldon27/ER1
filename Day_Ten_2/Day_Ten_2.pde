int x = 0;
int y = 0;

int speed = 5;

int state = 0;

void setup(){
  size(640,360); //size of box
}
void draw(){
  background(255);
  //display square
  stroke(0);
  fill(200);
  rect(x,y,9,9);
  
  if(state == 0){ // go across the top
    x = x + speed;
    if(x > width-10){
      x = width-10;
      state = 1;
    }
  } else if(state == 1){ // go down the side
    y = y + speed;
    if(y > height-10){
      y = height-10;
      state = 2;
    }
  } else if(state == 2){ // go across the bottom
  x = x - speed;
  if(x < 0){
    x = 0;
    state = 3;
    }
  } else if(state == 3){ //go up the side
    y = y - speed;
    if(y < 0){
      y = 0;
      state = 0;
    }
  }
}
  
  
  