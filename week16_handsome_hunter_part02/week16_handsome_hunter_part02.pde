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
}
void draw(){
  background(bg);
  translate(300, 300);
  ellipse(0, 0, 20, 20);
  
  image(body, 0, 0);
  pushMatrix();
    if(mousePressed){
      translate(mouseX, mouseY);
      println(mouseX, mouseY);
    }
    translate(199, 175);
    rotate(radians(frameCount));
    translate(-207, -334);
    image(head, 0, 0);
  popMatrix();
}
