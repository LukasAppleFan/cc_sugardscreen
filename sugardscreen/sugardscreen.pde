void setup()
{
  size(600, 600);
  background(100);
  fill(255, 0, 0);
  ellipse(width/2, height/2, 50, 50);
}

int y = 1;
PVector pos = new PVector(0, 0);

void draw()
{
  if (pos.x <= 600) {
    pos.x++;
  } else if (pos.x >= 600) {
    pos.x--;
  }
  fill(0, 0, 255);
  ellipse(pos.x, pos.y, 50, 50);
}
