  
  int x,y;
  int x1=90,y1=260;
  int x2=308,y2=226;
  int pantallas=0;
  int tur1=0;
  int tur2=0;
  int TURNO=1;
  int jugadordos=0;
  int sig=0;
  String jug="elige jugador 1 (click)";
 float gener;
 int gener1;
 char genert='0';
 int vida1=10;
  int vida2=10;
  String numelec="-preciona (o) y luego teclea 1,2 o 3 y si los numeros coinciden se hara daño";
  String numesc="";
  String numesc2="";
int numero1=0;
int numero2=0;
int lup=2;
int ganador=0;
class personajes {
    //posicion   
  int xp,yp;
  int vida;
  int eleccion;
  personajes(int xp_, int yp_, int eleccion_){
xp=xp_;
yp=yp_;
eleccion=eleccion_;
  }

  void eleccion1(){
  switch(eleccion){
    case 1:{
   PER1();
  }
  break;
  case 2:{
    PER2();
  }
  break;
case 3 :{
  PER3();
}
break;
case 4:{
PER4();
}
break;
case 5:{
PER5();
}
break;
}
  }
}
  

  personajes mon1;
   personajes mon2;
    personajes mon3;
     personajes mon4;
       personajes mon5;

 
void setup(){
   frameRate(30);
  size(900,500);
  background(0);
    x = width/2;
  y = height/2;
 mon1= new personajes( 0,0,1);
mon2= new personajes(0,0,2);
mon3= new personajes(0,0,3);
mon4= new personajes(0,0,4);
mon5= new personajes(0,0,5);
}
void draw(){
    if (mousePressed){
 print(mouseX,mouseY);
  }

 if (pantallas==0){
   PANTALLA1();
 }
 if (pantallas==1){
   pant2();
 }
  if (pantallas==2){
   PANTALLA3();
 
  }

  
}
void PANTALLA1(){
  rectMode(CENTER);

  fill(255);
  textSize(100);
  textAlign(CENTER,CENTER);
  text("lUXURY",450,50);
  noFill();
  stroke(255);
  rect(450,200,160,80);
  textSize(50);
  text("iniciar",450,200);

  BOTON();
  
 }
  void BOTON(){
   if((mouseX>x-81)&&(mouseX<x+81)&&(mouseY<y-10)&&(mouseY>y-92)&&(mousePressed)&&(pantallas==0)){
   pantallas=1;
    }
    else{
      pantallas=0;
    }
  }
 //PANTALLA2
void pant2(){
 
  background(255);
  //FONDOS

  noStroke();
  rectMode(CORNER);
  if(( mouseX<x-244)&&(mouseX>0)){
  fill(25,162,250);
 rect(0,0,206,500);
  }
  else{
    fill(255);
 rect(0,0,206,500);
  }
  if((mouseX>x-244)&&(mouseX<x-38)){
    fill(0,255,0);
    rect(206,0,206,500);
  }
  else {
    fill(255);
    rect(206,0,206,500);
  }
  if ((mouseX>x-38)&&(mouseX<x+130)){
   fill(250,231,25);
    rect(412,0,170,500);
  }
  else{
      fill(255);
    rect(412,0,170,500);
  }
   if ((mouseX>x+130)&&(mouseX<x+300)){
   fill(97,41,166);
    rect(575,0,170,500);
  }
  else{
      fill(255);
    rect(575,0,170,500);
  }
  if ((mouseX>x+300)&&(mouseX<x+450)){
   fill(150,23,23);
    rect(745,0,170,500);
  }
  else{
      fill(255);
    rect(745,0,170,500);
  }
    
  //PERSONAJES
 PER1();
 PER2();
 PER3();
 PER4();
 PER5();
   //TEXTO
  
  fill(0);
   rect(450,10,900,40);
  fill(255);
  textSize(30);
  textAlign(CENTER,CENTER);
  text("ELIGE UN PERSONAJE",450,10);
  textSize(20);
  text("ALPHA-9(a)",90,405);
  text("POTSU(s)",310,405);
  text("SHILOH(d)",493,405);
  text("CALUM(f)",659,405);
  text("INVASOR(g)",820,405);
  
  fill(0);
  text(jug,450,80);
   

 
 elec1();
 if (sig==1){
 elec2();
 }

  
  }
  void PER5(){
    pushMatrix();
    translate(0,-60);
    //brazos
fill(0);
    rect(773,280,20,90,20);
    rect(865,280,20,90,20);
    //piernas
    rect(806,350,20,90,20);
    rect(833,350,20,90,20);
    fill(20);
    noStroke();
    rect(819.5,335,50,50);
    triangle(758,230,881,230,819,360);
    fill(0);
    beginShape();
    vertex(819,142);
    vertex(783,156);
    vertex(768,191);
    vertex(783,224);
    vertex(819,250);
    vertex(853,219);
    vertex(863,189);
    vertex(853,159);
    vertex(819,142);
    endShape();
    //ojos
    fill(255,0,0);
    beginShape();
    vertex(777,188);
    vertex(812,201);
    vertex(799,209);
    vertex(777,188);
    endShape();
    beginShape();
    vertex(824,199);
    vertex(854,188);
    vertex(838,209);
    vertex(824,199);
    endShape();
    popMatrix();
  }
  void PER1(){
    pushMatrix();
    translate(0,0);
  rectMode(CENTER);
   fill(0);
   noStroke();
    rect(x1+59,y1,30,80,30);
   fill(0);
   noStroke();
    rect(x1-60,y1,30,80,30);
   rect(x1-20,y1+60,30,50,30);
   rect(x1+20,y1+60,30,50,30);
  fill(249,132,6);
  noStroke();
  rect(x1,y1-80,100,100,40);
  rect(x1,y1,100,100,40);
  fill(0);
  rect(x1,y1-80,80,50,40);
 strokeWeight(1);
 fill(88,250,248);
 stroke(255);
    ellipse(x1-21,y1-82,10,10);
    ellipse(x1+19,y1-82,10,10);
    fill(249,132,6);
    noStroke();
    ellipse(x1-58,y1-29,40,30);
    ellipse(x1+58,y1-29,40,30);
  popMatrix();
}
void PER2(){
  pushMatrix();
  //brazos
  fill(98,54,25);
  rect(x2-18,y2+84,30,80,30);
  rect(x2+22,y2+84,30,80,30);
  //piernas
   rect(x2-63,y2+72,30,80,30);
  rect(x2+63,y2+72,30,80,30);
  //cuerpo
  fill(63,145,21);
  ellipse(x2,y2,130,200);
  ellipse(x2,y2+34,160,100);
  fill(131,217,79);
  fill(42,64,15);
  ellipse(x2,y2,80,200);
  //cabeza
  fill(131,217,79);
   ellipse(x2,y2,80,80);
  //ojos
  stroke(5);
  fill(255);
  ellipse(x2-22,y2-4,10,10);
  ellipse(x2+22,y2-4,10,10);
  //ojos2
  noFill();
  stroke(1);
   ellipse(x2-22,y2-4,11,11);
   ellipse(x2+22,y2-4,11,11);
   popMatrix();
  }
  
  void PER3(){
    pushMatrix();
    translate(0,0);
    //patas
     fill(234,33,0);
     noStroke();
    pushMatrix();
    translate(466,287);
    rotate(0.6);
    rect(0,0,10,40);
    popMatrix();
     pushMatrix();
    translate(470,310);
    rotate(-0.7);
    rect(0,0,10,40);
    popMatrix();
     pushMatrix();
    translate(466,287);
    rotate(-0.7);
    rect(0,0,10,40);
    popMatrix();
    pushMatrix();
    translate(461,260);
    rotate(0.9);
    rect(0,0,10,40);
    popMatrix();
    //patas2
     pushMatrix();
    translate(530,287);
    rotate(-0.6);
    rect(0,0,10,40);
    popMatrix();
     pushMatrix();
    translate(522,315);
    rotate(0.7);
    rect(0,0,10,40);
    popMatrix();
     pushMatrix();
    translate(537,287);
    rotate(0.7);
    rect(0,0,10,40);
    popMatrix();
    pushMatrix();
    translate(540,260);
    rotate(-0.9);
    rect(0,0,10,40);
    popMatrix();

     
    
    //cuerpo
     rect(499,260,55,50,30);
     ellipse(499,210,120,100);
   //ojos
  stroke(5);
  fill(255);
  ellipse(465,208,10,10);
  ellipse(530,208,10,10);
  //ojos2
  noFill();
  stroke(1);
   ellipse(465,208,11,11);
   ellipse(530,208,11,11);
   noStroke();
   fill(255,248,48);
   rect(497,223,10,126); 
   popMatrix();
  }
  void PER4(){
    pushMatrix();
    translate(0,0);
    //pies
     fill(6,218,226);
     rect(638,300,30,80,30);
     rect(675,300,30,80,30);
    //brazos
    rect(613,266,30,80,30);
    rect(704,266,30,80,30);
    //cuerpo
    noStroke();
       fill(170,131,11);
   rect(656,260,80,80,30);
    //cabeza
    fill(6,218,226);
    ellipse(656,200,100,100);
     //ojos
  stroke(5);
  fill(255);
  ellipse(634,195,15,15);
  ellipse(676,195,15,15);
   ellipse(655,169,15,15);
  //ojos2
  noFill();
  stroke(1);
   ellipse(634,195,16,16);
   ellipse(676,195,16,16);
   ellipse(655,169,16,16);
    popMatrix();
  }
  
   

  //PANTALLA30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
//jugadores


  void elec1(){
      if(tur1==0){
       text(jug,450,80);
     
      }
    
     if(( mouseX<x-244)&&(mouseX>0)&&(mousePressed)&&(pantallas==1)){
    tur1=1;
     jug="elige jugador 2 (teclas)";
     sig=1;
     
     //elec2();
      }
      if((mouseX>x-244)&&(mouseX<x-100)&&(mousePressed)&&(pantallas==1)){
         tur1=2;
     jug="elige jugador 2 (teclas)";
          sig=1;
    // elec2();
      }
        if ((mouseX>x-0)&&(mouseX<x+130)&&(mousePressed)&&(pantallas==1)){
        tur1=3;
         jug="elige jugador 2 (teclas)";
              sig=1;
     elec2();
     }
     if ((mouseX>x+130)&&(mouseX<x+300)&&(mousePressed)&&(pantallas==1)){
         tur1=4;
         jug="elige jugador 2 (teclas)";
              sig=1;
     //elec2(); 
     }
     if ((mouseX>x+300)&&(mouseX<x+450)&&(mousePressed)&&(pantallas==1)){
       tur1=5;
         jug="elige jugador 2 (teclas)";
              sig=1;
     //elec2(); 
     }
       
     }
     void elec2(){
      
    
     if(key=='a'){
    tur2=1;
       pantallas=2;
      }
      if(key=='s'){
         tur2=2;
     pantallas=2;
      }
        if (key=='d'){
        tur2=3;
          pantallas=2;
    
     }
     if (key=='f'){
         tur2=4;
     pantallas=2;
    
     }
     if (key=='g'){
       tur2=5;
         pantallas=2;
     }
    
     }
  void T1(){
    if(TURNO==1){
    textSize(20);
    fill(255);
  text(numelec,400,80);
  if (numero2==0){
    numesc2="--";
  }
  if(numero1==0){
  numesc="--";
  }
  if(key=='1'){
    numero1=1;
    if(numero1==1){
    numesc="1";
    }
  }
   if(key=='2'){
    numero1=2;
    if(numero1==2){
    numesc="2";
    }
  }
   if(key=='3'){
    numero1=3;
    if(numero1==3){
    numesc="3";
    }
  }
  if (key=='o'){
    lup=2;
    loop();
    gener=random(4);
    GENERATOR();

  }
  if(key==' '){
    vida2();
    numero1=0;
      numesc="--";
    TURNO=2;
  }

  

    }
  if(TURNO==2){
    textSize(20);
    fill(255);
  numelec="J2-preciona (o) y luego teclea 1,2 o 3, seguido de espacio para atacar";
    if(key=='1'){
    numero2=1;
    if(numero2==1){
    numesc2="1";
    }
  }
   if(key=='2'){
    numero2=2;
    if(numero2==2){
    numesc2="2";
    }
  }
   if(key=='3'){
    numero2=3;
    if(numero2==3){
    numesc2="3";
    }
  }
  if (key=='o'){
    lup=2;
    loop();
    gener=random(4);
    GENERATOR();

  }
   if((key=='v')&&(TURNO==2)){
     TURNO=1;
    vida1();
    numero2=0;
      numesc2="--";
      numelec="";
  }
  
  
  }
  }
  
  
  void nlup(){
  if (key=='p'){
  lup=1;
  if (lup==1){
    noLoop();
  }
  
  }
}
void lup(){
if(lup==2){
loop();
    gener=random(4);
    GENERATOR();
}
}
 void GENERATOR(){
    if((gener>=0)&&(gener<2)){
    genert='1';
    gener1=1;
    }
    if((gener>=2)&&(gener<3)){
    genert='2';
    gener1=2;
    }
    if(gener>=3){
    genert='3';
    gener1=3;
    }
 }
 void vida2(){  if(gener1==numero1){
    
    vida2=vida2-gener1;
   

  }}
  void vida1(){  if(gener1==numero2){
    
    vida1=vida1-gener1;
   

  }}
  void ganador(){
   if (vida2==0){
     pantallas=3;
     ganador=1;
   }
   if(vida1==0){
     pantallas=3;
     ganador=2;
   }
 }

void PANTALLA3(){
 
 pushMatrix();
 translate(450,250);
  noStroke();
  fill(15,2,27);
  rect(0,0,900,500);
  fill(23,2,43);
  rect(0,50,900,50);
  fill(41,5,74);
  rect(0,100,900,50);
  fill(121,119,117);
  rect(0,150,900,100);
   popMatrix();
    if(tur1==1){
    mon1.eleccion1();
   
    }
     if(tur1==2){
     pushMatrix();
     translate(-200,0);
    mon2.eleccion1();
     popMatrix();
  }
  if(tur1==3){
    pushMatrix();
    translate(-400,20);
    mon3.eleccion1();
      popMatrix();
  }
  if(tur1==4){
      pushMatrix();
    translate(-565,0);
    mon4.eleccion1();
    popMatrix();
  }
  if(tur1==5){
     pushMatrix();
    translate(-725,15);
  mon5.eleccion1();
  popMatrix();
  }
  //ELECCION DE PERSONAJE 2
  if(tur2==1){
     pushMatrix();
    translate(+725,0);
    mon1.eleccion1();
    popMatrix();
 
    }
     if(tur2==2){
        pushMatrix();
    translate(+500,0);
    mon2.eleccion1();
    popMatrix();
      
  }
  if(tur2==3){
    pushMatrix();
     translate(+300,20);
    mon3.eleccion1();
     popMatrix();
  }
  if(tur2==4){
    pushMatrix();
     translate(+160,10);
    mon4.eleccion1();
    popMatrix();
   
  }
  if(tur2==5){
    pushMatrix();
     translate(0,15);
  mon5.eleccion1();
  popMatrix();
   
  }
 
 
  fill(88,250,248);
  ellipse(450,255,80,80);
  fill(255);
  textSize(30);
text(genert,450,250);
ellipse(250,255,80,80);
ellipse(650,255,80,80);
fill(0,255,0);
rect(820,400,100,50,30);
fill(0);
  text(numesc,250,255);
  text(numesc2,650,255);
    text(vida2,820,400);
    fill(0,255,0);
    rect(120,400,100,50,30);
    fill(0);
    text(vida1,120,400);
 T1();
 ganador();
 textSize(16);
 text("si los numeros coinciden el jugador1 apilca daño con (espacio) y el jugador2 con (v)",430,460);
}
void PANTALLA4(){
  background(0);
  if (ganador==1){
    textSize(100);
    text("JUGADOR UNO ES EL GANADOR",450,250);
      text("presona c para continuar",450,350);
  }
    if (ganador==2){
    textSize(100);
    text("JUGADOR DOS ES EL GANADOR",450,250);
      text("presona c para continuar",450,350);
  }
  if (key=='c'){
    pantallas=0;
  }
  

}