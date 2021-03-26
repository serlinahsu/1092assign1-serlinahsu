PImage bg;
PImage soil;
PImage life;
PImage groundhog;
PImage robot;
PImage soldier; 

float soldierX=-80;
float soldierY=400;

float robotX=(80*floor(random(6)))+160;
float robotY=(80*floor(random(4)))+160;

float lazerX=robotX+25;
float lazerY=robotY+37;
int lazerWidth=0;

void setup() {
	size(640, 480, P2D);
	bg = loadImage("bg.jpg");
  soil = loadImage("soil.png");
  life = loadImage("life.png");
  groundhog = loadImage("groundhog.png");
  robot = loadImage("robot.png");
  soldier = loadImage("soldier.png");
  
  //soldier appears in random level 
  soldierY =(80*floor(random(4)))+160;

}

void draw() {
	background(bg);
  
  //soil
  image(soil,0,160,640,320);
  
  //life*3
  image(life,10,10,50,51);
  image(life,80,10,50,51);
  image(life,150,10,50,51);
  
  //grass
  noStroke();
  fill(124, 204, 25);
  rect(0,145,640,15);
  
  //groundhog
  image(groundhog,280,80,80,80);
  
  //sun
  strokeWeight(5);
  stroke(255, 255, 0);
  fill(253, 184, 19);
  ellipse(590,50,120,120);
  
  
  //soldier
  image(soldier,soldierX,soldierY,80,80);
  
  //move to right
  soldierX +=2;
  if(soldierX >=640) soldierX=-80;
  
  //robot
  image(robot,robotX,robotY,80,80);
  
  //lazer beam
  strokeWeight(10);
  stroke(255,0,0);
  line(lazerX,lazerY,lazerX-lazerWidth,lazerY);
  lazerX -=2;
  lazerWidth +=2;
  if(lazerWidth>40)lazerWidth=40;
  //move to left (lazer beam)
  if(lazerX < robotX-80){
    lazerX=robotX+25;
    lazerWidth=0;
  }
}   
