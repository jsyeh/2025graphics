// week13_3_texture_textureMode_beginShape_vertex_endShape
// 先教「貼圖」, 之後再加進去 week13_2 的 camera 設定
// https://processing.org/reference/texture_.html
PImage img;
void setup() {
  size(400, 400, P3D); // 要加 P3D 才有 OpenGL 3D 功能
  img = loadImage("chessboard.png"); // 記得把圖檔「拉進來」
  textureMode(NORMAL); // 有很多種「貼圖的模式」
} // 先用最簡單的 NORMAL 來畫, 2個三角形, 不像是3D透視的效果
void draw() {
  background(128); // 灰背景
  beginShape(); // 開始畫
    texture(img); // 把圖片, 當貼圖
    vertex(40, 80, 0, 0); // 4個頂點vertex 的四邊形, 會裁出2個三角形
    vertex(320, 20, 1, 0);
    vertex(380, 360, 1, 1);
    vertex(160, 380, 0, 1);
  endShape();
}
