Die die;

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
            die = new Die(x, y);
            die.show();
            die.roll();
            total += die.dieValue;
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
    int dieX, dieY, dieValue;
    Die(int x, int y)
    {
        dieX = x;
        dieY = y;
        dieValue = (int) (Math.random() * 6) + 1;
    }
    
    void roll()
    {
        if (dieValue == 1) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(dieX + 75, dieY + 75, 10, 10);
        } else if (dieValue == 2) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(dieX + 37.5, dieY + 37.5, 10, 10);
            ellipse(dieX + 112.5, dieY + 112.5, 10, 10);
        } else if (dieValue == 3) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(dieX + 75, dieY + 37.5, 10, 10);
            ellipse(dieX + 75, dieY + 75, 10, 10);
            ellipse(dieX + 75, dieY + 112.5, 10, 10);
        } else if (dieValue == 4) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(dieX + 37.5, dieY + 37.5, 10, 10);
            ellipse(dieX + 37.5, dieY + 112.5, 10, 10);
            ellipse(dieX + 112.5, dieY + 37.5, 10, 10);
            ellipse(dieX + 112.5, dieY + 112.5, 10, 10);
        } else if (dieValue == 5) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(dieX + 37.5, dieY + 37.5, 10, 10);
            ellipse(dieX + 37.5, dieY + 112.5, 10, 10);
            ellipse(dieX + 112.5, dieY + 37.5, 10, 10);
            ellipse(dieX + 112.5, dieY + 112.5, 10, 10);
            ellipse(dieX + 75, dieY + 75, 10, 10);
        } else if (dieValue == 6) {
            fill((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
            ellipse(dieX + 37.5, dieY + 37.5, 10, 10);
            ellipse(dieX + 37.5, dieY + 75, 10, 10);
            ellipse(dieX + 37.5, dieY + 112.5, 10, 10);
            ellipse(dieX + 112.5, dieY + 37.5, 10, 10);
            ellipse(dieX + 112.5, dieY + 75, 10, 10);
            ellipse(dieX + 112.5, dieY + 112.5, 10, 10);
        }  
    }
    
    void show()
    {
        noStroke();
        fill(255, 255, 255);
        rect(dieX, dieY, 150, 150);
    }
}
