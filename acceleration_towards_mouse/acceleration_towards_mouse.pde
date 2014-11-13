Swarmer[] swarm = new Swarmer[20];

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < swarm.length; i++) {
    swarm[i] = new Swarmer();
  }
}

void draw() {
  background(50);
  for (int i = 0; i < swarm.length; i++) {
    swarm[i].display();
    swarm[i].update();
  }
}

class Swarmer {
  PVector loc, vel, acc;
  float topSpeed;
  float scale;
  int d;

  Swarmer() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(0, 0);
    topSpeed = 10;
    scale = .5;
    d = 50;
  }

  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, loc);
    dir.normalize();
    dir.mult(scale);
    acc = dir;
    vel.add(acc);
    loc.add(vel);
    vel.limit(topSpeed);
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
}

