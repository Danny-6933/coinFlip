ArrayList<Coin> coins = new ArrayList<Coin>();
int totalFlips;
int totalHeads;
int totalTails;

void setup() {
  size(600, 600);
  frameRate(50);

  for (int i = 0; i < 100; i++) {
    coins.add(new Coin());
  }

}

void draw() {
  background(40, 40, 120);

  for(int i = 0; i < 100; i++) {
    coins.get(i).flip();
    coins.get(i).show();
  }

  fill(255);
  textSize(20);
  textAlign(LEFT);
  text("Flips: " + totalFlips, 10, 560);
  textAlign(CENTER);
  text("Heads: " + totalHeads, width/2, 560);
  textAlign(RIGHT);
  text("Tails: " + totalTails, width-10, 560);
  if (totalFlips >= 10000) {
    noLoop();
  }
}

class Coin {
  double weight;
  int status;
  int size;

  Coin() {
    setWeight(0.5);
    status = 0;
    size = 40;
  }

  void show() {
    int x = (int)(Math.random() * width);
    int y = (int)(Math.random() * height-100);
    if (status == 0) {
      fill(200,200,200);
      stroke(100,100,100);
    } else if (status == 1) {
      fill(200,100,100);
      stroke(100,0,0);
    } else {
      fill(100,100,200);
      stroke(0,0,100);  
    }
    ellipse(x,y,size,size);
  }

  void flip() {
    if (Math.random() < weight) {
      status = 1;
      totalHeads++;
    } else {
      status = 2;
      totalTails++;
    }
    totalFlips++;
  }

  void setWeight(double w) {
    if (w >= 0 && w <= 1) {
      weight = w;
    } else {
      weight = 0.50;
    }
  }
}
