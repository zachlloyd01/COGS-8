import ddf.minim.*; //import library

Minim minim; //initiate minim and player objects
AudioPlayer player;

PVector smallPosition;
PVector largePosition;

void setup(){
  size(400,400);
  minim = new Minim(this);
  player = minim.loadFile("dkcountry.mp3", 2048);
  player.play();
}

void draw(){
  
}
