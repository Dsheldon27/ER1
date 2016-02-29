size(200,200); //size of box
int x = 0;
while(x < width){
  int y = 0;
  while(y < height){
    noStroke(); // no stroke
    fill(random(255), random(255), random(255)); //colors inside box
    rect(x,y,10,10);
    y+=10;
  }
  x += 10;
}