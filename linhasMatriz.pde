int [][] M = new int[20][20];


void setup() {
  size(640, 640);
  noStroke();
  criar();
  for (int j = 0; j<width/32; j++) {
    print("\n");
    for (int i = 0; i<height/32; i++) {
      desenhar(i*32, j*32, 32, M[i][j]);
      print(M[i][j], "");
    }
  }
}

void draw() {
}

void criar() {
  for (int j = 0; j < width/32; j++) {
    for (int i = 0; i < height/32; i++) {
      //linhas brancas verticais
      M[1][j] = 1;
      M[3][j] = 1;
      M[5][j] = 1;
      M[7][j] = 1;
      M[18][j] = 1;
      M[16][j] = 1;
      M[14][j] = 1;
      M[12][j] = 1;
      
      //linhas brancas horizontais
      M[i][1] = 1;
      M[i][3] = 1;
      M[i][5] = 1;
      M[i][7] = 1;
      M[i][18] = 1;
      M[i][16] = 1;
      M[i][14] = 1;
      M[i][12] = 1;
     
    }
  }
}

void mapa() {
}

void desenhar(int x, int y, int t, int m) {
  if (m == 0) {
    fill(0);
    rect(x, y, t, t);
  } else { //m == 0
    fill(255);
    rect(x, y, t, t);
  }
}
