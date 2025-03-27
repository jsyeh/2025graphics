// week06_7_push_RRT_many_TRT_inside_pop
// 慢慢組合出機器手臂
void setup(){
  size(500, 800, P3D); // Step00: 把視窗變長一點,看比較完整
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10); // 黑球是「中心」
   
  fill(252,131,77);
  pushMatrix();
    if(mousePressed && mouseButton==RIGHT) rotateY(radians(frameCount)); // Step03: 右鍵旋轉
    if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount)); // Step02: 右鍵旋轉
    translate(0,-100); //translate(x,y); // Step01: 要先往上抬升0,-100, 把「關節」到中心
    box(50, 200, 25); // 手臂 
    pushMatrix();
      translate(0, -100); // Step00: 掛到手臂上面, 觀察到 0,-100
      //if(mousePressed) // Step00: 把 if(mousePressed)刪掉,讓它一直轉 
      rotateZ(radians(frameCount));
      translate(100, 0);
      box(200, 50, 25); // 手肘
      
      pushMatrix();
        translate(100, 0); 
        rotateZ(radians(frameCount));
        translate(25, 0, 0);
        box(50, 25, 50); // 小手腕
      popMatrix();
    popMatrix();
  popMatrix();
}
float x = 0, y = 0; // 會動的位置
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + " y:" + y);
}
