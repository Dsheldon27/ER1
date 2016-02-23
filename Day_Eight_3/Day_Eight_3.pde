boolean button = false;

int x = 50; //variable
int y = 50; //variable
int w = 100; //variable
int h = 75; //variable

void setup(){
  size(200,200); //size of box
}
void draw(){
  if(button){
    background(255,255,200); //background color
    stroke(0); //stroke color 
  } else {
    background(0); //background color
    stroke(255); //stroke color
  }
  fill(175); //fill color 
  rect(x,y,w,h); //rect variables
  
}
void mousePressed(){
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){ //when the button is pressed the color changes
    button = !button;
  }
}