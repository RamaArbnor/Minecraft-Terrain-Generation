float w = 10;

float cols;
float rows;

float xoff;
float yoff;

float speed = 0;

void setup() {
  size(600,600,P3D);
  
  cols = width / w;
  rows = height / w;
  
}

void draw() {

  background(135, 206, 250);
  translate(width, height/5);
  rotateX(PI/3);
  
  speed -= 0.08;
  
  yoff = speed;
  
  //beginShape();
  for (int i = 0; i < rows; i++) {
    xoff = 0;
    translate(-width, w, 0);
    for(int j = 0; j < cols; j++) {
      float r = round(map(noise(xoff,yoff), 0, 1, -w*2, w*5));
      if(r < w){
        fill(0,0,120);
      }else{
        fill(0,120,0);
      }
      box(w, w, r);
      translate(w, 0, 0);
      
      
      xoff += 0.5;
    }
    yoff += 0.5;
  }
  //endShape();
}
