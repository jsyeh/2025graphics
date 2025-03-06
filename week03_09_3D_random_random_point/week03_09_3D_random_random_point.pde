// week03_09_3D_random_random_point
float [] x = new float[1000];
float [] y = new float[1000];
void setup(){
  size(400, 400, P3D);
  for(int i=0; i<1000; i++){
    x[i] = random(400);
    y[i] = random(400);
  }
}
void draw(){
  background(0); // 黑色的背景
  stroke(255); // 白色的線條
  for(int i=0; i<1000; i++){
    point(x[i], y[i]); // 現在只有 2D 的點, 還差 z 座標
  }
}
