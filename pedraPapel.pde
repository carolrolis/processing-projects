PImage pedraimg, papelimg, tesouraimg, lagartoimg, spockimg;
int player, computador;
boolean jogada = false;

void setup() {
  size(600, 600);
  pedraimg = loadImage("https://pngfre.com/wp-content/uploads/rock-poster.png");
  papelimg = loadImage("https://static.vecteezy.com/system/resources/thumbnails/022/219/336/small/white-torn-paper-isolated-on-a-transparent-background-png.png");
  tesouraimg = loadImage("https://static.vecteezy.com/system/resources/previews/010/366/281/original/scissor-icon-transparent-free-png.png");
  lagartoimg = loadImage("https://i.pinimg.com/originals/0a/1f/f0/0a1ff09b6501dd70329165efb4f9ba93.png");
  spockimg = loadImage("https://static.wikia.nocookie.net/epicrapbattlesofhistory/images/c/c1/Spock_Based_On.png");
}

void mousePressed() { //a cada vez que um botão é clicado, a jogada é true, a variável player recebe o valor correspondente ao botão, a variável computador recebe novo valor aleatório e o texto fica branco
  if (mouseX > 100 && mouseX < 220 && mouseY > 450 && mouseY < 490) { //área do botão da pedra(0)
    jogada = true;
    player = 0;
    computador = int(random(0, 5));
    fill(255);
    text("PEDRA", 125, 480);
  } else if (mouseX > 250 && mouseX < 370 && mouseY > 450 && mouseY < 490) { //área do botão do papel(1)
    jogada = true;
    player = 1;
    computador = int(random(0, 5));
    fill(255);
    text("PAPEL", 278, 480);
  } else if (mouseX > 400 && mouseX < 520 && mouseY > 450 && mouseY < 490) { //área do botão da tesoura(2)
    jogada = true;
    player = 2;
    computador = int(random(0, 5));
    fill(255);
    text("TESOURA", 412, 480);
  } else if (mouseX > 180 && mouseX < 300 && mouseY > 520 && mouseY < 560) { //área do botão do lagarto(3)
    jogada = true;
    player = 3;
    computador = int(random(0, 5));
    fill(255);
    text("LAGARTO", 192, 549);
  } else if (mouseX > 330 && mouseX < 450 && mouseY > 520 && mouseY < 560) { //área do botão do spock(4)
    jogada = true;
    player = 4;
    computador = int(random(0, 5));
    fill(255);
    text("SPOCK", 353, 549);
  }
}

void draw() {
  background(255);
  fill(0);
  textSize(32);
  text("ESCOLHA A SUA JOGADA", 135, 70);

  //botões
  strokeWeight(2);
  textSize(24);
  fill(230, 0, 0);
  rect(100, 450, 120, 40);
  fill(0);
  text("PEDRA", 125, 480);
  fill(230, 0, 0);
  rect(250, 450, 120, 40);
  fill(0);
  text("PAPEL", 278, 480);
  fill(230, 0, 0);
  rect(400, 450, 120, 40);
  fill(0);
  text("TESOURA", 412, 480);
  fill(230, 0, 0);
  rect(180, 520, 120, 40);
  fill(0);
  text("LAGARTO", 192, 549);
  fill(230, 0, 0);
  rect(330, 520, 120, 40);
  fill(0);
  text("SPOCK", 353, 549);

  //se os botões forem clicados
  if (jogada == true) {
    
    //checar a jogada do player e retornar o texto na tela
    if (player == 0) {
      text("Você usou pedra", 220, 130);
      image(pedraimg, 80, 180, 200, 200);
    } else if (player == 1) {
      text("Você usou papel", 220, 130);
      image(papelimg, 80, 180, 200, 200);
    } else if (player == 2) {
      text("Você usou tesoura", 220, 130);
      image(tesouraimg, 80, 180, 250, 250);
    } else if (player == 3) {
      text("Você usou lagarto", 220, 130);
      image(lagartoimg, 80, 180, 200, 200);
    } else if (player == 4) {
      text("Você usou Spock", 220, 130);
      image(spockimg, 80, 180, 200, 200);
    }
    
    //checar o valor do computador e retornar o texto na janela, juntamente do resultado da partida de acordo com a escolha do jogador
    if (computador == 0) {
      text("O computador usou pedra", 160, 160);
      image(pedraimg, 320, 180, 200, 200);
      if (player == 0) text("Empate!", 270, 420);
      if (player == 1) text("Papel cobre a pedra. Você ganhou!", 125, 420);
      if (player == 2) text("Pedra quebra a tesoura. Computador ganhou!", 90, 420);
      if (player == 3) text("Pedra amassa o lagarto. Computador ganhou!", 90, 420);
      if (player == 4) text("Spock vaporiza a pedra. Você ganhou!", 100, 420);
    } else if (computador == 1) {
      text("O computador usou papel", 168, 160);
      image(papelimg, 320, 180, 200, 200);
      if (player == 0) text("Papel cobre a pedra. Computador ganhou!", 100, 420);
      if (player == 1) text("Empate!", 270, 420);
      if (player == 2) text("Tesoura corta papel. Você ganhou!", 135, 420);
      if (player == 3) text("Lagarto come o papel. Você ganhou!", 120, 420);
      if (player == 4) text("Papel refuta Spock. Computador ganhou!", 110, 420);
    } else if (computador == 2) {
      text("O computador usou tesoura", 150, 160);
      image(tesouraimg, 320, 180, 250, 250);
      if (player == 0) text("Pedra quebra a tesoura. Você ganhou!", 120, 420);
      if (player == 1) text("Tesoura corta papel. Computador ganhou!", 105, 420);
      if (player == 2) text("Empate!", 270, 420);
      if (player == 3) text("Tesoura decapita o lagarto. Computador ganhou!", 70, 420);
      if (player == 4) text("Spock quebra a tesoura. Você ganhou!", 110, 420);
    } else if (computador == 3) {
      text("O computador usou lagarto", 160, 160);
      image(lagartoimg, 320, 180, 200, 200);
      if (player == 0) text("Pedra amassa o lagarto. Você ganhou!", 120, 420);
      if (player == 1) text("Lagarto come o papel. Computador ganhou!", 95, 420);
      if (player == 2) text("Tesoura decapita o lagarto. Você ganhou!", 98, 420);
      if (player == 3) text("Empate!", 270, 420);
      if (player == 4) text("Lagarto envenena Spock. Computador ganhou!", 80, 420);
    } else if (computador == 4) {
      text("O computador usou Spock", 164, 160);
      image(spockimg, 320, 180, 200, 200);
      if (player == 0) text("Spock vaporiza a pedra. Computador ganhou!", 90, 420);
      if (player == 1) text("Papel refuta Spock. Você ganhou!", 130, 420);
      if (player == 2) text("Spock quebra a tesoura. Computador ganhou!", 94, 420);
      if (player == 3) text("Lagarto envenena Spock. Você ganhou!", 108, 420);
      if (player == 4) text("Empate!", 270, 420);
    }
  }
}
