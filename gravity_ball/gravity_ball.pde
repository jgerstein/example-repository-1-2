float locX, locY;    //location
float velX, velY;    //velocity
float gravity;       //gravity
float accX;          //horizontal acceleration

int sz = 50;

void setup() {
  size(800, 600); 
  locX = width/2;
  locY = sz;
  velX = 0;
  velY = 0;
  gravity = .01;
  accX = 0;
}

void draw() {

  background(0);
  velX += accX;
  velY+=gravity;

  locX += velX;
  locY += velY;

  ellipse(locX, locY, sz, sz);      //draw a ball

  if (locY + sz/2 > height) {
    locY = height - sz/2;
    velY *= -1;
  }
}

