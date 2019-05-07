class Star{

  float x;
  float y;
  float hue;
  float opacity;
  boolean huefadingin;

  Star(float x_, float y_, float hue_, float opacity_){
    x = x_;
    y = y_;
    hue = hue_;
    opacity = opacity_;
  }
  
  
  void display(){
    float theHue = hue+clusterhuechanger;
    fill(theHue%360,180,360,opacity);
    rect(x, y, 40,40);
  } 
  
  void move(float x_, float y_, float hue_){
    x = x_;
    y = y_;
    hue = hue_;  
    opacity = 0;
    
  }
  
  void update(float opacity_){
   
    opacity = opacity_;
    
    /*if (huefadingin){
      hue+=2;
    }
    else{
      hue-=2;
    }
    
    if (hue > 360){
      huefadingin = false;
    }
    if (hue <0){
      huefadingin = true;
    }*/
    
  }
}