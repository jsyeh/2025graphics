PImage bg;
PImage head;
PImage body;
PImage arm_left, arm_right;
PImage leg_left, leg_right;
void setup(){
  size(1280,720);
  bg = loadImage("場景.jpg");
  head = loadImage("head.png");
  body = loadImage("body.png");
}
void draw(){
  background(bg);
  image(body, 0, 0);
  image(head, 0, 0);
}
