// week02_8_homework_is_here
// 想要把畫出來的座標, 變成我們的程式碼!!!
ArrayList<Integer> x, y; // 先有2個「還沒準備好」的(小的)資料結構, 等mousePressed再新增準備
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>(); // 大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
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
  for(int I=0; I<xx.size(); I++){ // 大寫I 對應大的資料結構
    ArrayList<Integer> x = xx.get(I); // 取出裡面的小的資料結構
    ArrayList<Integer> y = yy.get(I);
    for(int i=1; i<x.size(); i++){ // 小的, 再照舊畫
      line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
    }
  }
  noFill();
  strokeWeight(5);
  draw1();
  draw2();
}
void keyPressed(){ //小心,注音輸入法,會卡住按鍵,要換英文輸入
  if(key=='s' || key=='S'){ // 如果按下英文的小寫 or 大寫 s 想 save 存檔的話
    for(int I=0; I<xx.size(); I++){ // 大寫I 對應大的資料結構
      ArrayList<Integer> x = xx.get(I); // 取出裡面的小的資料結構
      ArrayList<Integer> y = yy.get(I);
      println("beginShape();"); // beginShape();
      for(int i=1; i<x.size(); i++){ // 小的, 再照舊畫
        println("  vertex(" + x.get(i) + ", " + y.get(i) + ");" );
      } // 改在 keyPressed() 按下 s 或 S 時, 再全部印!
      println("endShape();"); // endShape();
    } 
  }
}
void mouseDragged(){
  //println("vertex(mouseX, mouseY);");
  //println("vertex(" + mouseX + ", " + mouseY + ");" ); //不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){ // 滑鼠按下去時, 建「新的」資料結構
  x = new ArrayList<Integer>();  xx.add(x);
  y = new ArrayList<Integer>();  yy.add(y);
}
void draw1(){
beginShape();
  vertex(300, 42);
  vertex(302, 41);
  vertex(304, 40);
  vertex(305, 40);
  vertex(306, 39);
  vertex(307, 38);
  vertex(308, 38);
  vertex(310, 37);
  vertex(310, 36);
  vertex(311, 36);
  vertex(313, 35);
  vertex(315, 33);
  vertex(316, 32);
  vertex(317, 32);
  vertex(318, 32);
  vertex(318, 31);
  vertex(319, 31);
  vertex(319, 30);
  vertex(320, 30);
  vertex(320, 29);
  vertex(321, 29);
  vertex(322, 29);
  vertex(322, 28);
  vertex(323, 28);
  vertex(324, 27);
  vertex(325, 26);
  vertex(326, 26);
  vertex(327, 25);
  vertex(328, 25);
  vertex(329, 25);
  vertex(330, 25);
  vertex(331, 24);
  vertex(332, 24);
  vertex(333, 23);
  vertex(334, 23);
  vertex(334, 24);
  vertex(333, 27);
  vertex(332, 28);
  vertex(332, 29);
  vertex(332, 30);
  vertex(332, 31);
  vertex(332, 32);
  vertex(331, 33);
  vertex(331, 34);
  vertex(331, 35);
  vertex(331, 37);
  vertex(330, 38);
  vertex(329, 39);
  vertex(329, 40);
  vertex(329, 41);
  vertex(329, 42);
  vertex(328, 42);
  vertex(328, 44);
  vertex(327, 44);
  vertex(326, 45);
  vertex(325, 46);
  vertex(324, 47);
  vertex(323, 48);
  vertex(323, 49);
  vertex(321, 50);
  vertex(321, 51);
  vertex(320, 52);
  vertex(319, 52);
  vertex(318, 54);
  vertex(317, 55);
  vertex(316, 55);
  vertex(316, 56);
  vertex(316, 57);
  vertex(315, 57);
  vertex(315, 58);
  vertex(315, 59);
  vertex(316, 59);
  vertex(317, 59);
  vertex(318, 59);
  vertex(318, 58);
  vertex(319, 58);
  vertex(320, 58);
  vertex(321, 58);
  vertex(321, 57);
  vertex(322, 57);
  vertex(323, 57);
  vertex(324, 57);
  vertex(325, 56);
  vertex(328, 56);
  vertex(330, 56);
  vertex(331, 56);
  vertex(332, 56);
  vertex(333, 56);
  vertex(334, 56);
  vertex(335, 56);
  vertex(336, 56);
  vertex(337, 55);
  vertex(338, 55);
  vertex(339, 55);
  vertex(340, 55);
  vertex(341, 55);
  vertex(342, 55);
  vertex(343, 55);
  vertex(344, 55);
  vertex(345, 55);
  vertex(346, 55);
  vertex(346, 56);
  vertex(347, 56);
  vertex(348, 56);
  vertex(349, 56);
  vertex(349, 57);
  vertex(349, 58);
  vertex(349, 59);
  vertex(349, 62);
  vertex(349, 63);
  vertex(349, 65);
  vertex(349, 66);
  vertex(349, 67);
  vertex(349, 68);
  vertex(348, 69);
  vertex(348, 70);
  vertex(347, 71);
  vertex(347, 72);
  vertex(347, 73);
  vertex(346, 74);
  vertex(346, 75);
  vertex(345, 75);
  vertex(344, 75);
  vertex(344, 76);
  vertex(344, 77);
  vertex(343, 77);
  vertex(342, 77);
  vertex(341, 78);
  vertex(340, 78);
  vertex(340, 79);
  vertex(339, 79);
  vertex(338, 79);
  vertex(338, 80);
  vertex(337, 81);
  vertex(336, 81);
  vertex(335, 82);
  vertex(333, 83);
  vertex(333, 84);
  vertex(332, 84);
  vertex(332, 85);
  vertex(333, 85);
  vertex(334, 85);
  vertex(336, 85);
  vertex(337, 85);
  vertex(337, 86);
  vertex(338, 86);
  vertex(339, 86);
  vertex(340, 86);
  vertex(341, 87);
  vertex(342, 87);
  vertex(342, 88);
  vertex(344, 88);
  vertex(345, 88);
  vertex(346, 88);
  vertex(347, 88);
  vertex(348, 88);
  vertex(350, 88);
  vertex(352, 88);
  vertex(353, 89);
  vertex(354, 89);
  vertex(354, 90);
  vertex(355, 90);
  vertex(355, 91);
  vertex(354, 92);
  vertex(353, 92);
  vertex(352, 93);
  vertex(350, 94);
  vertex(349, 95);
  vertex(348, 96);
  vertex(347, 96);
  vertex(346, 96);
  vertex(346, 97);
  vertex(345, 97);
  vertex(344, 97);
  vertex(344, 98);
  vertex(343, 98);
  vertex(343, 99);
  vertex(342, 99);
  vertex(341, 99);
  vertex(341, 100);
  vertex(340, 100);
  vertex(340, 101);
  vertex(339, 101);
  vertex(339, 102);
  vertex(339, 103);
  vertex(339, 104);
  vertex(338, 104);
  vertex(338, 105);
  vertex(337, 106);
  vertex(336, 106);
  vertex(335, 106);
  vertex(335, 107);
  vertex(335, 108);
  vertex(334, 108);
  vertex(333, 108);
  vertex(333, 109);
endShape();
  
}
void draw2(){
beginShape();
  vertex(324, 137);
  vertex(325, 140);
  vertex(326, 141);
  vertex(326, 143);
  vertex(326, 144);
  vertex(326, 145);
  vertex(326, 146);
  vertex(326, 147);
  vertex(326, 148);
  vertex(326, 149);
  vertex(326, 150);
  vertex(326, 151);
  vertex(326, 152);
  vertex(326, 154);
  vertex(326, 155);
  vertex(326, 156);
  vertex(326, 157);
  vertex(326, 158);
  vertex(326, 159);
  vertex(326, 160);
  vertex(326, 161);
  vertex(325, 162);
  vertex(324, 163);
  vertex(323, 164);
  vertex(323, 165);
  vertex(322, 166);
  vertex(322, 167);
  vertex(321, 167);
  vertex(321, 168);
  vertex(320, 169);
  vertex(319, 170);
  vertex(318, 171);
  vertex(318, 172);
  vertex(317, 172);
  vertex(317, 173);
  vertex(316, 173);
  vertex(316, 174);
  vertex(315, 174);
endShape();
beginShape();
  vertex(336, 147);
  vertex(336, 149);
  vertex(336, 150);
  vertex(336, 152);
  vertex(336, 153);
  vertex(336, 154);
  vertex(336, 155);
  vertex(336, 156);
  vertex(336, 157);
  vertex(336, 158);
  vertex(336, 159);
  vertex(335, 160);
  vertex(335, 161);
  vertex(335, 162);
  vertex(334, 162);
  vertex(334, 163);
  vertex(333, 163);
  vertex(333, 164);
  vertex(333, 165);
  vertex(332, 165);
  vertex(332, 166);
  vertex(331, 166);
  vertex(330, 167);
  vertex(329, 168);
  vertex(329, 169);
  vertex(328, 169);
  vertex(328, 170);
  vertex(327, 170);
  vertex(327, 171);
  vertex(326, 171);
endShape();
  
}
