void setup() {
  size(600, 600);
  rectMode(CENTER);
  noStroke();

  //for loop de teste em tamanho maior
  //for (int j=0; j<1; j++) {
  //  for (int i=0; i<1; i++) {
  //    desenho(i*100+300, j*100+300, 600, #F06027, #501405, #CE0F15);
  //  }
  //}
  //for loop para repetição de 6 linhas e 6 colunas
  for (int j=0; j<6; j++) {
    for (int i=0; i<6; i++) {
      desenho(i*100+50, j*100+50, 100, #dc572c, #532d16, #991e20);
    }
  }
}

void desenho(int x, int y, int d, color laranja, color marrom, color vermelho) {

  //fundo
  fill(laranja);
  rect(x, y, d, d);


  //triângulo marrom superior grande
  fill(marrom);
  triangle(x-d/1.8, y-d/2, x+d/1.8, y-d/2, x, y-d/4.5);

  //triângulo laranja superior
  fill(laranja);
  triangle(x-d/2.6, y-d/1.9, x+d/2.6, y-d/1.9, x, y-d/3);

  //triângulo marrom superior pequeno
  fill(marrom);
  triangle(x-d/4.5, y-d/1.9, x+d/4.5, y-d/1.9, x, y-d/2.4);

  //triângulo vermelho superior
  fill(vermelho);
  triangle(x-d/20, y-d/1.9, x+d/20, y-d/1.9, x, y-d/2);

  //linha central marrom
  fill(marrom);
  rect(x, y-d/12, d/8, d/2.8);

  //figura marrom inferior
  triangle(x, y+d/30, x-d/3.2, y+d/5, x+d/3.2, y+d/5);
  rect(x, y+d/3.15, d/1.6, d/4.2);
  stroke(marrom);
  strokeWeight(2);
  line(x-d/3.5, y+d/2.3, x+d/3.5, y+d/2.3); //gambiarra pra esconder falha de 1 pixel entre as formas
  noStroke();
  quad(x-d/3.2, y+d/2.3, x+d/3.2, y+d/2.3, x+d/5.8, y+d/2, x-d/5.8, y+d/2);

  //linhas laterais
  rect(x-d/2, y+d/3, d/8, d/3);
  triangle(x-d/2, y+d/2, x-d/3, y+d/2, x-d/2, y+d/2.38); //triângulo para encaixar as linhas
  rect(x+d/2, y+d/3, d/8, d/3);
  triangle(x+d/2, y+d/2, x+d/3, y+d/2, x+d/2, y+d/2.38); //triângulo para encaixar as linhas

  //figuras marrons laterais
  quad(x-d/2, y+d/4.8, x-d/2, y-d/2.8, x-d/5, y-d/4.8, x-d/5, y+d/25);
  quad(x+d/2, y+d/4.8, x+d/2, y-d/2.8, x+d/5, y-d/4.8, x+d/5, y+d/25);

  //figura vermelha inferior
  fill(vermelho);
  quad(x, y+d/7, x, y+d/2, x-d/5, y+d/2.5, x-d/5, y+d/4);
  quad(x, y+d/7, x, y+d/2, x+d/5, y+d/2.5, x+d/5, y+d/4);

  //figuras vermelha laterais
  quad(x-d/2, y-d/4, x-d/2, y+d/10, x-d/3.2, y, x-d/3.2, y-d/6);
  quad(x+d/2, y-d/4, x+d/2, y+d/10, x+d/3.2, y, x+d/3.2, y-d/6);
}
