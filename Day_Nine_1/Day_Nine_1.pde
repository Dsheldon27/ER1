size(200,200);
background(255);

int y = 80; //Vertical location of each line
int x = 50; //Initial horizontal location for first line
int spacing = 10; //How far apart is each line
int len = 20; //Length of each line

int xStop = 150;
stroke(0);

while(x <= xStop){
  line(x,y,x,y+len);
  x = x + spacing;
}