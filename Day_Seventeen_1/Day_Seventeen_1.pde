int[] y;
void setup(){
  size(500,500);
  y = new int[width];
}
void draw(){
  background(205);
  for(int i = y.length-1; i > 0; i--){
    y[i] = y[i-1];  //read from bottom of list
  }
    y[0] = mouseY; //add new value @ top
    
    for(int i = 1; i < y.length; i++){
      line(i,y[i],i-1,y[i-1]);
    }
}