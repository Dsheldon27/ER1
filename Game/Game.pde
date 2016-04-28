Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops = 0;

boolean gameOver = false;

int score = 0;
int level = 1;
int lives = 3;
int levelCounter = 0;
PFont f;

void setup() {
  size(640, 360);
  catcher = new Catcher(32);
  drops = new Drop[50];
  timer = new Timer(300);
  timer.start();
  f = createFont("Arial", 12, true);
  noCursor();
}
void draw() {
  background(random(255), random(255), random(255));

  if (gameOver) {
    textFont(f, 48);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("You really just aren't good", width/2, height/2);
  } else {


    catcher.setLocation(mouseX, mouseY);
    catcher.display();

    //check the timer
    if (timer.isFinished()) {
      //init one drop

      //increment drop below..
      //totalDrops++;
      if (totalDrops < drops.length) {
        drops[totalDrops] = new Drop();
        totalDrops++;
        //if we hit the end of array, start over
      }
      timer.start();
    }

    for (int i = 0; i < totalDrops; i++) {
      if (!drops[i].finished) {
        drops[i].move();
        drops[i].display();

        if (drops[i].reachedBottom()) {
          levelCounter++;
          drops[i].finished();
          lives--;
          if (lives <= 0) {
            gameOver = true;
          }
        }

        //if statement for intersection
        if (catcher.intersect(drops[i])) {
          drops[i].finished();
          levelCounter++;
          score++;
        }
      }
    }
    if (levelCounter >= drops.length) {
      level++;
      levelCounter = 0;
      lives = 3;
      totalDrops = 0;
      timer.setTime(constrain(300 - level * 25, 0, 300));
    }
    textFont(f, 14);
    fill(0);
    text("Lives left:" + lives, 10, 20);
    rect(10, 24, lives*10, 10);

    text("level:" + level, 300, 20);
    text("score:" + score, 300, 40);
  }
}