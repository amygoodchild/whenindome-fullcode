
class Triangle{
  
  int fadecandy;
  int triangle;
  float x;
  float y;
  float angle;
  float hue;
  PVector centre;
  PVector pointA;
  PVector pointB;
  PVector pointC;
  PVector location;
  float size;
  float h;
  int type;
  float brightness;
  float ht;
    
  Triangle(int fadecandy_, int triangle_, float  x_, float y_, float angle_, float hue_, int type_){
    fadecandy = fadecandy_;
    triangle = triangle_;
    x = x_ * scale;
    y = y_ * scale;
    angle = angle_;
    hue = hue_;
    size = 325;
    type = type_;
    // 0 = equilateral
    // 1 = isosceles
    brightness = 360;
    ht = random(0,1);
    
    calcSize();
    
  }
  
  void update(float theBrightness){
   hue = (map(noise(ht), 0, 1, 0,500))%360;
   ht += 0.005;
   brightness = theBrightness;
    
  }
  
  void display(){
    fill (hue, 360, brightness,50);
    if (type == 0){
      pushMatrix();
        translate(centre.x,centre.y);
        translate(pointB.x, pointB.y);
        rotate(angle);
        triangle(pointA.x, pointA.y-25, pointB.x, pointB.y-25, pointC.x, pointC.y-25);  
      popMatrix();
    }
    if (type == 1 ){
      pushMatrix();
        translate(x,y);
        //translate(pointB.x, pointB.y);
        //rotate(radians(90));
        rotate(angle);
        
        triangle(0, 0, 210, 140, 210, -140); 
        fill(100,0,100);
        
      popMatrix();
      ellipse(x,y,10,10);
    }
    
    
  }
  
  void calcSize(){
    
    h = sin(1.0472)*size;
    float ch = sin(0.523599) * (h/2); 
    if (type == 0){
      centre = new PVector (x, y-h+ch);
      pointA = new PVector(-(size/2), -ch);
      pointB = new PVector(0, h-ch);
      pointC = new PVector(size/2, -ch);
    }
    if (type == 1){
      centre = new PVector (x, y-h+ch);
      pointA = new PVector(x, y);
      pointB = new PVector(0, h-ch);
      pointC = new PVector(size/2, -ch);
    }
  }
  
  
 
  
}
