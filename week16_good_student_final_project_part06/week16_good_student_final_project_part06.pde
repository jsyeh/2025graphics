PShape body;
PShape arm_lower_L, arm_upper_L;
void setup(){
  size(500, 500, P3D);
  body = loadShape("body.obj");
  arm_lower_L = loadShape("arm_lower_L.obj");
  arm_upper_L = loadShape("arm_upper_L.obj");
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
    rotate(radians(frameCount));
    translate(-0.1, -1.05);//translate(mouseX/100.0, mouseY/100.0); // TRT 的第1個T
    //if(mousePressed) println(mouseX/100.0, mouseY/100.0);
    // 會看到, 印出 -0.1 -1.05
    shape(arm_upper_L, 0, 0);
    
    pushMatrix();
      translate(0.31, 0.93); 
      rotate(radians(frameCount));
      myCuteJoint(); // 讓關節不要有破洞
      translate(-0.31, -0.93); //translate(mouseX/100.0, mouseY/100.0); // TRT 的第1個T
      //if(mousePressed) println(mouseX/100.0, mouseY/100.0);
      shape(arm_lower_L, 0, 0);
    popMatrix();
  popMatrix();
}
void myCuteJoint(){
  noStroke();
  fill(117, 89, 135);
  sphere(0.05);  
}
