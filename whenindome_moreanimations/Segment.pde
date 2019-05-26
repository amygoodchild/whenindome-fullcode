class Segment{

  float hue;
  float brightness;
  float angle;
  float ht;
  
  Segment(float angle_){
    ht = random(0,1);
    hue = map(noise(ht), 0, 1, 0, 100);
    brightness = 360;
    angle = angle_;
  }
  
  
  void display(){
    fill(hue,180,brightness,30);
    
    //ellipseMode(CENTER);
    
    pushMatrix();
      translate(width/2-90, height/2+110);
      rotate(radians(angle));
      triangle(0,0,900,200,0,1200);
    popMatrix();

  } 
  
  void move(float theBrightness){
    ht+= 0.005;
    angle+=1;
    hue = (map(noise(ht), 0,1,-100,800))%360;
    

    
  }
  
   

}
