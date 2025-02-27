// week02_5_ArrayList_Integer_new_for_size_get_add_mouseDragged
// 要利用資料結構, 把歷史軌跡 記起來
ArrayList<Integer> x = new ArrayList<Integer>(); // 新建資料結構
ArrayList<Integer> y = new ArrayList<Integer>();
PImage img;
void setup(){
  size(400, 400);
  img = loadImage("cute.png"); // 每次新的檔案,要再把圖「拉進來」
} // 記得把圖檔, (像上週一樣)拉到程式碼裡
void draw(){
  background(img);
  fill(255, 200); // 半透明的色彩 白色, alpha值是128
  rect(0, 0, 400, 400); // 畫超大的四邊形,全部蓋住
  // 上面是 week02_4, 下面用迴圈,從資料結構取出來
  for(int i=1; i<x.size(); i++){
    line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
