Die die1;

void setup()
{
    size(700, 500);
    noLoop();
}

void draw()
{
    int total = 0;
    background((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
    for (int y = 0; y <= 350; y+=175) {
        for (int x = 0; x <= 350; x+=175) {
            die1 = new Die(x, y);
            die1.show();
            die1.roll();
            total += die1.die1Value;
        }  
    }  
    textSize(25);
    text("DICE TOTAL: " + total, 505, 200);
    text("AVERAGE: " + total/9, 530, 300);
}

void mousePressed()
{
    redraw();
}

class Die
{
    int die1X, die1Y, die1Value;
    Die(int x, int y)
    {
        die1X = x;
        die1Y = y;
        die1Value = (int) (Math.random() * 6) + 1;
    }
    
    void roll()
    {
        if (die1Value == 1) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(die1X + 75, die1Y + 75, 10, 10);
        } else if (die1Value == 2) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(die1X + 37.5, die1Y + 37.5, 10, 10);
            ellipse(die1X + 112.5, die1Y + 112.5, 10, 10);
        } else if (die1Value == 3) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(die1X + 75, die1Y + 37.5, 10, 10);
            ellipse(die1X + 75, die1Y + 75, 10, 10);
            ellipse(die1X + 75, die1Y + 112.5, 10, 10);
        } else if (die1Value == 4) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(die1X + 37.5, die1Y + 37.5, 10, 10);
            ellipse(die1X + 37.5, die1Y + 112.5, 10, 10);
            ellipse(die1X + 112.5, die1Y + 37.5, 10, 10);
            ellipse(die1X + 112.5, die1Y + 112.5, 10, 10);
        } else if (die1Value == 5) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(die1X + 37.5, die1Y + 37.5, 10, 10);
            ellipse(die1X + 37.5, die1Y + 112.5, 10, 10);
            ellipse(die1X + 112.5, die1Y + 37.5, 10, 10);
            ellipse(die1X + 112.5, die1Y + 112.5, 10, 10);
            ellipse(die1X + 75, die1Y + 75, 10, 10);
        } else if (die1Value == 6) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(die1X + 37.5, die1Y + 37.5, 10, 10);
            ellipse(die1X + 37.5, die1Y + 75, 10, 10);
            ellipse(die1X + 37.5, die1Y + 112.5, 10, 10);
            ellipse(die1X + 112.5, die1Y + 37.5, 10, 10);
            ellipse(die1X + 112.5, die1Y + 75, 10, 10);
            ellipse(die1X + 112.5, die1Y + 112.5, 10, 10);
        }  
    }
    
    void show()
    {
        noStroke();
        fill(255, 255, 255);
        rect(die1X, die1Y, 150, 150);
    }
}
