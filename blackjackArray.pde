//inicializando matriz sem nenhum valor para que este possa ser atribuído dentro da função geraMatriz()
int [][] M;
//matriz de zeros e uns das cartas viradas ou desviradas
int [][] E;
//variável da soma das cartas
int soma = 0;


void setup() {
  size(500, 500);
  geraMatriz(5, 13); //gera uma matriz 5x5 com valores aleatórios de 0 a 12
  geraMatrizEstados(5, 0); //gera uma matriz 5x5 com valores 0(ou seja, todas as cartas começarão com cor 0)
}


void draw() {
  for (int j = 0; j < 5; j++) {
    for (int i = 0; i < 5; i++) {
      if (E[i][j] == 0) {
        cartas(i*100+50, j*100+50, 100, M[i][j], 0); //se o valor do elemento da matriz E for 0, a cor das cartas será 0(preto)
      } else {
        cartas(i*100+50, j*100+50, 100, M[i][j], 255); //se o valor do elemento da matriz E não for 0, a cor das cartas será 255(branco)
      }
    }
  }
}


//n = tamanho de uma matriz quadrada n x n
//v = valores aleatórios da matriz(de 0 a v)
void geraMatriz(int n, int v) {
  M = new int [n][n]; //atribui o valor do parâmetro n(no caso, 5) à quantidade de linhas e colunas da matriz

  for (int j = 0; j < 5; j++) {
    for (int i = 0; i < 5; i++) {
      M[i][j] = int(random(v)); //cada elemento da matriz recebe um valor aleatório de 0 a v(no caso, 13)
    }
  }
}


//n = tamanho da matriz quadrada n x n
//e = estado(virada ou desvirada, 0 ou 1, preta ou branca)
void geraMatrizEstados(int n, int e) {
  E = new int [n][n]; //atribui o valor do parâmetro n(no caso, 5) à quantidade de linhas e colunas da matriz

  for (int j = 0; j < 5; j++) {
    for (int i = 0; i < 5; i++) {
      E[i][j] = e; //cada elemento será 0, valor atribuído anteriormente no setup para que as cartas apareçam inicialmente viradas/pretas
    }
  }
}


//x, y e t = posição e tamanho
//texto = valores da matriz M[i][j]
void cartas(int x, int y, int t, int texto, int cor) {
  fill(cor);
  rect(x-t/2, y-t/2, t, t);
  fill(0);
  textSize(28);
  text(texto, x, y);
}


void mousePressed() {
  int x = mouseX/100;
  int y = mouseY/100;

  soma += int(M[x][y]);
  println("Carta selecionada:", M[x][y]);

  if (soma > 21) {
    println(soma, ", você perdeu.");
    soma = 0;
  }

  E[x][y] = 1; //quando o mouse clicar no elemento E[x][y], ele mudará seu valor para 1, tornando a carta clicada branca
}
