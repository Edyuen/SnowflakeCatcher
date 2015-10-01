Snowflake [] snow;
void setup()
{
  size(300,300);
  background(0, 0, 0);

  snow = new Snowflake [500];
  for (int i = 0; i < snow.length; i++)
  {
    snow[i] = new Snowflake();
  }
}
void mouseDragged()
{
 
  noStroke();
  fill(69,69,69);
  ellipse(mouseX, mouseY, 5, 5);

}

void draw()
{
 
  for (int i = 0; i < snow.length; i++){
    
    snow[i].erase();
    snow[i].lookDown();
    snow[i].move();
    snow[i].wrap();
    snow[i].show();
  }
}

class Snowflake
{
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    isMoving = true;
  

  }
  void show()
  {
    stroke(0);
    fill(255,167,53);
    ellipse(x, y, 5, 5);
  }
  void lookDown()
  {
    if (get(x, y+4) != color(0)){
      isMoving = false;
    }
    else isMoving = true;
  }
  void erase()
  {
    fill(0);
    ellipse(x, y, 7, 7);

  }
  void move()
  {
    if (isMoving == true) {
      y = y + 1;
    }
  }
  void wrap()
  {
    if (y > 290) {
      y = 0;
      x =(int)(Math.random()*300);
    }
  }
}


