//cria uma matriz bidimensional de números inteiros com 8 linhas e 8 colunas
//os valores/posições da matriz vão de M[0][0] a M[7][7]
int M [][] = new int[8][8];
//variáveis globais criadas para guardar a última posição da matriz que foi alterada pela função mouseMoved()
//evita que a mesma célula da matriz seja alterada várias vezes enquanto o mouse se mover
//as variáveis podem ser inicializadas com qualquer valor, pois só servem para receber os valores de x e y
int anteriorX = 0;
int anteriorY = 0;


void setup() {
  size(640, 640);
  noFill();
  stroke(#A628EA);
  strokeWeight(8);

  //loops para formatação da matriz no console e da atribuíção de valores à matriz
  for (int j = 0; j<8; j++) {
    println("\n"); //quebra de 1 linha entre cada grupo
    print("[ ");
    for (int i = 0; i<8; i++) {
      M[i][j] = int(random(0, 2)); //atribui 0 ou 1, aleatoriamente, a cada valor da matriz
      print(M[i][j], ""); //mostra os valores no console espaçados entre si por uma string vazia
    }
    print("]");
  }
}

void draw() {
  background(0); //fundo para que os desenhos sejam apagados/substituídos

  //loops para a repetição, em 8 linhas e 8 colunas, da função semiarcos
  //o último valor da função é M[i][j] pois de acordo com o valor de i e j na matriz o desnenho alternará
  for (int j = 0; j < 8; j++) {
    for (int i = 0; i < 8; i++) {
      semiarcos(i*80+40, j*80+40, 80, M[i][j]);
    }
  }
}

//função do desenho de semiarcos
void semiarcos(int x, int y, int t, int p) {
  //se p for 1, ele mostrará os semiarcos em tais posições. se p não for 1(0), os semiarcos tomarão outras posições
  if (p == 1) {
    arc(x-t/2, y-t/2, t, t, radians(0), radians(90));
    arc(x+t/2, y+t/2, t, t, radians(180), radians(270));
  } else {
    arc(x+t/2, y-t/2, t, t, radians(90), radians(180));
    arc(x-t/2, y+t/2, t, t, radians(270), radians(360));
  }
}


/*
a função mouseMoved é acionada toda vez que o mouse se move dentro da tela
se mouseX for 160, então x = 160/80 = 2 (ou seja, o mouse está na terceira coluna da matriz, já que o índice começa em 0)
se mouseY for 240, então y = 240/80 = 3 (ou seja, o mouse está na quarta linha)
*/
void mouseMoved() {
  //x e y armazenam a divisão das coordenadas do mouse pelo tamanho de semiarcos()
  int x = mouseX/80;
  int y = mouseY/80;

  println("x =", x, "y =", y, "anteriorX =", anteriorX, "anteriorY =", anteriorY);
  if (x >= 0 && x < 8 && y >=0 && y < 8) {  //a matriz só alterará se o mouse estiver dentro do intervalo de 0 a 7
    if (x != anteriorX || y != anteriorY) { //se a posição do mouse for a mesma da posição anterior, a célula não será alterada; se apenas um dos valores mudar, o código funciona
      M[x][y] = 1 - M[x][y];                //inverte o valor da célula na posição (x, y) da matriz. Se for 1: 1 - 1 = 0; se for 0: 1 - 0 = 1
      //anteriorX e anteriorY são atualizadas para os valores atuais de x e y; assim, a função saberá qual era a célula anterior
      anteriorX = x;
      anteriorY = y;
    }
  }
}
