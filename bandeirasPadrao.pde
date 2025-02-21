void setup() {
  size(800, 640);
  background(0);
}

void draw() {
  for (int j = 0; j < height/40; j++) {
    for (int i = 0; i < width/40; i++) {
      if (j % 2 == 0) {
        bandeira(j*80+40, i*80+40, 80, #A628EA);
      } else {
        bandeira(j*80+40, i*80+40, 80, #F222A6);
      }
    }
  }
}

void bandeira(int x, int y, int t, int p) {
  noStroke();
  fill(p/p);
  rect(x-t/2, y-t/2, t, t);
  fill(p);
  quad(x, y-t/2, x+t/2, y, x, y+t/2, x-t/2, y);
  fill(p/p);
  ellipse(x, y, t/2, t/2);
}
