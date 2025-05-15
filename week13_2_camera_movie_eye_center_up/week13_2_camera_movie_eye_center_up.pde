// week13_2_camera_movie_eye_center_up
// 電腦圖學在繪圖時, 會設定 camera 的相關係數
import processing.video.*; // 要使用影片的外掛哦
Movie movie; // 要放影片的變數
void setup(){
  size(720, 480, P3D); // 要記得加上 P3D 才能有 OpenGL 3D 功能
  movie = new Movie(this, "street.mov"); // 請再把 street.mov 拉進來
  movie.loop(); // 迴圈播放   影片解析度720x480
}
void draw(){
  background(128);
  // https://processing.org/reference/camera_.html
  camera(mouseX, mouseY, 500,  360, 240, 0,    0, 1, 0); 
  // 很多參數 eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ
  //                          現在把影片中心點,當主角
  if(movie.available()) movie.read(); // 有新畫面,就讀入
  image(movie, 0, 0); // 放影片, 放在 0, 0
}
