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
  arm_left = loadImage("arm_left.png");
  arm_right = loadImage("arm_right.png");
  leg_left = loadImage("leg_left.png");
  leg_right = loadImage("leg_right.png");
}
void draw(){
  background(bg);
  translate(300, 300);
  ellipse(0, 0, 20, 20);
  
  image(body, 0, 0);
  pushMatrix();
    translate(199, 175);
    rotate(radians(frameCount));
    translate(-207, -334);
    image(head, 0, 0);
  popMatrix();
  pushMatrix();
    translate(141.0, 271.0);
    rotate(radians(frameCount));
    translate(-235.0, -264.0);
    image(arm_left, 0, 0);
  popMatrix();
  pushMatrix();
    translate(250.0, 267.0);
    rotate(radians(frameCount));
    translate(-213.0, -233.0);
    image(arm_right, 0, 0);
  popMatrix();
  pushMatrix();
    translate(dx, dy); // 找到-209.0 -185.0
    image(leg_left, 0, 0);
  popMatrix();
  image(leg_right, 0, 0);
}
float dx = 0, dy = 0;
void mouseDragged(){
  dx += mouseX - pmouseX;
  dy += mouseY - pmouseY;
  println(dx, dy);
}
