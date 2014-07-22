/*@pjs preload="asyn-spl.jpg";*/
PImage img;
int randX, randY;

void setup () {
    size (640, 360);
    background (255);
    img = loadImage("asyn-spl.jpg");
}

void draw() {
  for (int i = 0; i < 200; i = i + 1) {
    randX = int(random(0, 640));
    randY = int(random(0, 360));
    color c = img.get(randX, randY);
    fill(c);
    noStroke();
    ellipseMode(CENTER);
    ellipse(randX, randY, 5, 5);
  }
}




