//Connect the wires to the Makey Makey
//If the white boundary is touched, the ball restarts at the top
//Complete the maze  

int x = 0;
int y = 0;
float cxPos = 37;
float cyPos = 10;


void setup()
{
  size(600, 700);
}


void draw()
{
  background(0);

  stroke(185, 169, 232);
  fill(185, 169, 232);
  ellipse(cxPos, cyPos, 20, 20);

  DrawMaze();

  if (keyPressed)
  {
    if (keyCode == RIGHT)
    {
      cxPos = cxPos + 2;
    }
    if (keyCode == LEFT)
    {
      cxPos = cxPos - 2;
    }
    if (keyCode == UP)
    {
      cyPos = cyPos - 2;
    }
    if (keyCode == DOWN)
    {
      cyPos = cyPos + 2;
    }
  }

  if (red(get((int)cxPos, (int)cyPos)) == 255)
  {
    cxPos = 37;
    cyPos = 10;
  }

  if (red(get((int)cxPos+10, (int)cyPos)) == 255)
  {
    cxPos = 37;
    cyPos = 10;
  }

  if (red(get((int)cxPos-10, (int)cyPos)) == 255)
  {
    cxPos = 37;
    cyPos = 10;
  }

  if (red(get((int)cxPos, (int)cyPos+10)) == 255)
  {
    cxPos = 37;
    cyPos = 10;
  }

  if (red(get((int)cxPos, (int)cyPos-10)) == 255)
  {
    cxPos = 37;
    cyPos = 10;
  }
}


void DrawMaze()
{
  strokeWeight(3);
  stroke(255, 255, 255);
  line (x+15, y, x+15, 140);
  line (x+60, y, x+60, 100);
  line(x+15, 140, x+300, 140);
  line(x+60, 100, x+350, 100);
  line(x+350, 100, x+350, 300);
  line(x+300, 140, x+300, 350);
  line(x+300, 350, x+400, 350);
  line(x+350, 300, x+450, 300);
  line(x+450, 300, x+450, 600);
  line(x+400, 350, x+400, 550);
  line(x+450, 600, x+250, 600);
  line(x+450, 600, x+250, 600);
  line(x+400, 550, x+200, 550);
  line(x+200, 550, x+200, 700);
  line(x+250, 600, x+250, 700);
}
