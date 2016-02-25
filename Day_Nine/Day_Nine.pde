size(640,360);
background(255);

int y = 80; //Vertical Location of each line
int spacing = 10; //How far apart is each line
int len = 20; //Length of each line

//translation of the legs while loop to a far loop
for(int x =50; x <= 150; x += spacing) {
  line(x,y,x,y + len);
}