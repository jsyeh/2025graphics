PShape body;
PShape arm_lower_L, arm_upper_L;
PShape arm_lower_R, arm_upper_R;
void setup(){
  size(500, 500, P3D);
  body = loadShape("body.obj");
  arm_lower_L = loadShape("arm_lower_L.obj");
  arm_upper_L = loadShape("arm_upper_L.obj");
  arm_lower_R = loadShape("arm_lower_R.obj");
  arm_upper_R = loadShape("arm_upper_R.obj");
}
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 1;
void mouseDragged(){
  angleX[ID] += mouseX - pmouseX;
  angleY[ID] += mouseY - pmouseY;
}
void keyPressed(){
  if(key=='1') ID = 1; // 小心注音輸入法
  if(key=='2') ID = 2;
  if(key=='3') ID = 3;
  if(key=='4') ID = 4;
}
void draw(){
  background(128);
  translate(width/2, height/2);
  //scale(1, -1, 1); // 事後, 可以上下Y方向反過來
  rotate(radians(180)); // 也可以轉180度
  lights();
  sphere(10); // 中心
  scale(200);
  
  shape(body, 0, 0);
  
  pushMatrix();
    translate(0.1, 1.05);
    rotateY(radians(angleX[1]));
    rotateZ(radians(angleY[1]));
    translate(-0.1, -1.05);
    shape(arm_upper_L, 0, 0);
    
    pushMatrix();
      translate(0.31, 0.93); 
      rotateY(radians(angleX[2]));
      rotateZ(radians(angleY[2]));
      myCuteJoint(); // 讓關節不要有破洞
      translate(-0.31, -0.93);
      shape(arm_lower_L, 0, 0);
    popMatrix();
  popMatrix();

  pushMatrix();
    translate(-0.1, 1.05);
    rotateY(radians(angleX[3]));
    rotateZ(radians(angleY[3]));
    translate(0.1, -1.05);
    shape(arm_upper_R, 0, 0);
    
    pushMatrix();
      translate(-0.31, 0.93); 
      rotateY(radians(angleX[4]));
      rotateZ(radians(angleY[4]));
      myCuteJoint(); // 讓關節不要有破洞
      translate(0.31, -0.93); 
      shape(arm_lower_R, 0, 0);
    popMatrix();
  popMatrix();
}
void myCuteJoint(){
  noStroke();
  fill(117, 89, 135);
  sphere(0.05);  
}
