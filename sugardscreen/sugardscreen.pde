void setup()
{
  size(600, 600);
  background(100);
  fill(255, 0, 0);
  ellipse(width/2, height/2, 50, 50);
  
  for (int i = 0; i < balls.length; ++i)
  {
    balls[i] = new Ball(10);
  }
}

int y = 1;
PVector pos = new PVector(50, 100);
int directionX = 1;
int directionY = 1;

class Ball {
  PVector pos;
  int size;
  int directionX = 1;
  int directionY = 1;
  int spd;
  
  Ball(int _size) {
    pos = new PVector(width/2, height/2);
    size = _size;
  }
  
  void display() {
    fill(0, 255, 0);
    ellipse(pos.x, pos.y, size, size);
  }
  
  void move() {
    spd = int(random(5, 10));
    stayIn();
    pos.x += directionX;
    pos.y += directionY;
  }
  
  void stayIn() {
    if (pos.x <= 0) {
      directionX = int(random(5, 10));
    } else if (pos.x >= width) {
      directionX = -int(random(5, 10));
    }
    if (pos.y <= 0) {
      directionY = int(random(5, 10));
    } else if (pos.y >= height) {
      directionY = -int(random(5, 10));
    }
  }
}

Ball ball = new Ball(50);
Ball ball1 = new Ball(60);
Ball ball2 = new Ball(70);
Ball ball3 = new Ball(50);
Ball ball4 = new Ball(50);
Ball ball5 = new Ball(50);
Ball balls[] = new Ball[100];


void draw()
{
  if (pos.x <= 0) {
    directionX = int(random(1, 5));
  } else if (pos.x >= width) {
    directionX = int(random(-1, -5));
  }
  if (pos.y <= 0) {
    directionY = int(random(1, 5));
  } else if (pos.y >= height) {
    directionY = int(random(-1, -5));
  }
  pos.x += directionX;
  pos.y += directionY;
  fill(0, 0, 255);
  background(100);
  ellipse(pos.x, pos.y, 50, 50);
  
  ball.display();
  ball.move();
  
  for (int i = 0; i < balls.length; ++i)
  {
    balls[i].display();
    balls[i].move();
  }
}
