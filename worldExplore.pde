float wx = 400;
float wy = 300;
float ex = 100;
float ey = 100;
float dx = 0;
float dy = 2;
float x = 400;
float y = 250;
float w = 40;
float h = 40;
int hairL = 0;
int hairU = 0;
int hairD = 0;
int hairR = 0;

void setup() {
  size(800,500);
  noStroke();
}

void draw() {
  background(70,40,10);
  
  if (dy > 300){
    dy = -dy;
  }
  
  if (dy < 100){
    dy = -dy;
  }
  
  //Possible enemy, need to fix 
  //fill(220);
  //rect(ex,ey,80,80);
  
  fill(160,82,45);
  ellipse(x,y,w,h);
  if (hairL == 1) hairLeft();
  if (hairR == 1) hairRight();
  if (hairD == 1) hairDown();
  if (hairU == 1) hairUp();
  
  fill(30,180,80);
  rect(wx,wy,70,70);
  rect(wx-150,wy-100,70,70);
  rect(wx+100,wy-50,80,80);
  rect(wx-500,wy-300,60,60);
  rect(wx+400,wy+200,70,70);
  rect(wx-250,wy-400,60,60);
  rect(wx+300,wy+100,50,50);
  rect(wx-600,wy-200,50,50);
  rect(wx+500,wy+500,60,60);
  rect(wx+400,wy-600,60,60);
  rect(wx+600,wy-300,80,80);
  rect(wx+900,wy-550,60,60);
  rect(wx+1000,wy-550,60,60);
  rect(wx+1100,wy-550,60,60);
  
  fill(20,200,160);
  rect(wx,wy+1000,90,90);
  rect(wx+1000,wy,500,110);
  rect(wx,wy-1000,90,90);
  rect(wx-1000,wy,400,150);
  
  fill(253,184,19);
  rect(wx,wy-450,60,40);
  rect(wx,wy-450,20,80);
  rect(wx+40,wy-450,20,80);
  
  //Fix to make enemies move
  //ex = ex + dx;
  //ey = ey + dy;
  
}

void hairLeft() {
  fill(160,82,45);
  beginShape();
  vertex(x,y-20);
  vertex(x,y+20);
  vertex(x+50,y+20);
  vertex(x+30,y+10);
  vertex(x+50,y);
  vertex(x+30,y-10);
  vertex(x+50,y-20);
  vertex(x,y-20);
  endShape();
}

void hairRight() {
  fill(160,82,45);
  beginShape();
  vertex(x,y-20);
  vertex(x,y+20);
  vertex(x-50,y+20);
  vertex(x-30,y+10);
  vertex(x-50,y);
  vertex(x-30,y-10);
  vertex(x-50,y-20);
  vertex(x,y-20);
  endShape();
}

void hairDown() {
  fill(160,82,45);
  beginShape();
  vertex(x-20,y);
  vertex(x+20,y);
  vertex(x+20,y-50);
  vertex(x+10,y-30);
  vertex(x,y-50);
  vertex(x-10,y-30);
  vertex(x-20,y-50);
  vertex(x-20,y);
  endShape();
}

void hairUp() {
  fill(160,82,45);
  beginShape();
  vertex(x-20,y);
  vertex(x+20,y);
  vertex(x+20,y+50);
  vertex(x+10,y+30);
  vertex(x,y+50);
  vertex(x-10,y+30);
  vertex(x-20,y+50);
  vertex(x-20,y);
  endShape();
}

void keyReleased(){
  hairL = 0;
  hairR = 0;
  hairD = 0;
  hairU = 0;
}
void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT && keyCode == DOWN){
      wy = wy + 5;
      wx = wx + 5;
    }
    else if(keyCode == UP){
      wy = wy + 10;
      hairU = 1;
      hairR = 0;
      hairL = 0;
      hairD = 0;
    }
    else if(keyCode == DOWN){
      wy = wy - 10;
      hairD = 1;
      hairR = 0;
      hairL = 0;
      hairU = 0;
    }
    else if(keyCode == RIGHT){
      wx = wx - 10;
      hairR = 1;
      hairL = 0;
      hairU = 0;
      hairD = 0;
    }
    else if(keyCode == LEFT){
      wx = wx + 10;
      hairL = 1;
      hairR = 0;
      hairU = 0;
      hairD = 0;
    }
    else if(keyCode == ENTER){        //Edit later for possible diagonal movement
      w = w - 25;
      h = h - 25;
      //delay(5000);
      //w = w - 25;
      //h = h - 25;
   }  
  }
 }
