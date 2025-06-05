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
ArrayList<String> lines = new ArrayList<String>(); // 放移動的結果 
int R = 0;
void keyPressed(){
  if(key=='1') ID = 1; // 小心注音輸入法
  if(key=='2') ID = 2;
  if(key=='3') ID = 3;
  if(key=='4') ID = 4;
  if(key=='s'){ // 一開始還沒有動的時候, 可以先存檔1行。動一下, 再存檔1行。
    String now = "";
    for(int i=0; i<10; i++){
      now += angleX[i] + " " + angleY[i] + " "; 
    }
    lines.add(now); // 把現在的這行, 加到 lines 裡
    String [] arr = new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt", arr);
  } else if(key=='r'){
    myReadAngles(); // 把原本的程式碼, 移到外面去, 讓程式精簡漂亮
    myNextAngle(); // 把原本的程式碼, 移到外面去, 讓程式精簡漂亮
  }else if(key=='p'){
    myReadAngles(); // 一樣要讀全部的角度
    myOldAndNewAngle(); // 要做動畫內插, 要有新舊關節
    playing = true; // 開始做動畫
  }
}
void myReadAngles(){
  if(R==0) { // 如果目前的沒有任何東西
    String [] file = loadStrings("angles.txt");
    if(file != null){ // 如果有讀到檔案
      for(int i=0; i<file.length; i++){ // 就檔案內容逐行
        lines.add(file[i]); // 加到 lines 資料結構裡
      }
    }
    //R = lines.size();
  }  
}
void myNextAngle(){
  if(R<lines.size()){
    float [] now = float(split( lines.get(R), ' '));
    for(int i=0; i<10; i++){ // 這裡要修正
      angleX[i] = now[i*2]; // 這裡要小心, 因為要分配給 2個方向的旋轉角度
      angleY[i] = now[i*2+1];
    }
    R = (R+1) % lines.size();
  }  
}
float [] angleOldX = new float[10];
float [] angleNewX = new float[10];
float [] angleOldY = new float[10];
float [] angleNewY = new float[10];
boolean playing = false; // 一開始不做動畫
float alpha = 0.0; // 內插公式: 新*alpha + 舊*(1-alpha)
void myOldAndNewAngle(){
  float [] now = float(split( lines.get(R), ' '));
  for(int i=0; i<10; i++){ // 這裡要修正
    angleOldX[i] = angleNewX[i];
    angleOldY[i] = angleNewY[i];
    angleNewX[i] = now[i*2]; // 這裡要小心, 因為要分配給 2個方向的旋轉角度
    angleNewY[i] = now[i*2+1];
  }
  R = (R+1) % lines.size();
}
void draw(){
  if(playing){
    alpha += 0.05;
    if(alpha>=1.0){
      alpha = 0;
      myOldAndNewAngle();
    }
    for(int i=0; i<10; i++){
      angleX[i] = angleNewX[i] * alpha + angleOldX[i] * (1-alpha);
      angleX[i] = angleNewX[i] * alpha + angleOldX[i] * (1-alpha);
    }
  }
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
