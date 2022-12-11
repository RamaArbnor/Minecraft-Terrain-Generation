float w = 30;

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
  translate(width, 600, -1000);
  rotateX(PI/3);
  stroke(255,255,255);
  speed -= 0.04;
  
  yoff = speed;


  yoff = speed;
  for(int y = 0; y < rows; y++){
    xoff = 0;
    translate(-w*rows,w,0);
    for(int x = 0; x < cols; x++){
        float r = map(noise(xoff, yoff),0,1,0,20);
        
      if(r < 8){
        fill(0,0,120);
      }else{
        fill(0,120,0);
      }
        
        createTower((int)r);

      xoff += 0.01;

    }
        yoff += 0.01;

  }

}

void createTower(int x){
  for(int i = 0; i < x; i++){
    translate(0,0,w);
    box(w,w,w);
    
  }
    translate(w,0,-x*w);

  //translate(w, 0, 0);

}