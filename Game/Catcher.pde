class Catcher {
  float r; //radius
  float x, y; //location
  float col;

  Catcher(float tempR) {
    r = tempR;
    col = color(random(255), random(255), random(255));
    x = 0;
    y = 0;
  }
  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  void display() {
    stroke(0);
    fill(col);
    ellipse(x, y, r * 2, r * 2);
  }
  //function for drop catcher intersection
  //TRUE OR FALSE is it intersecting?
  boolean intersect(Drop d) {
    //calc distance
    float distance = dist(x, y, d.x, d.y);
    //compare distance
    if (distance < r + d.r) {
      return true;
    } else {
      return false;
    }
  }
}