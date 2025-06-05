PShape arm_lower_L, arm_upper_L;
void setup(){
  size(500, 500, P3D);
  arm_lower_L = loadShape("arm_lower_L.obj");
  arm_upper_L = loadShape("arm_upper_L.obj");
}

void draw(){
  background(128);
  translate(width/2, height/2);
  lights();
  sphere(10);
  scale(200);
  pushMatrix();
    translate(0.31, 0.93); 
    rotate(radians(frameCount));
    translate(-0.31, -0.93); //translate(mouseX/100.0, mouseY/100.0); // TRT 的第1個T
    //if(mousePressed) println(mouseX/100.0, mouseY/100.0);
    shape(arm_lower_L, 0, 0);
  popMatrix();
}
