class Circle{

  float hue;
  float brightness;
  float radius;

  Circle(float hue_, int radius_){
    
    hue = hue_;
    brightness = 360;
    radius = radius_;
  }
  
  
  void display(){
    stroke(hue,180,brightness,50);
    strokeWeight((width+500)/numberOfCircles);
    noFill();
    //ellipseMode(CENTER);
    
    ellipse(width/2-90, height/2, radius, radius);

  } 
  
  void move(float theBrightness){
    radius+=10;
      
    brightness = theBrightness;
    
    if (radius > width+500){
      newCircle();
    }

    
  }
  
   void newCircle(){
     
     hue = random(hueCentral,(hueCentral+20)%360);
     radius = 0;
     
       
   }

}