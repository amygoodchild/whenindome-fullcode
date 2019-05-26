class Walker{

  float hue;
  float x;
  float y;
  float brightness;
  float radius;
  float t;
  float ht;

  Walker(){
    
    hue = random(hueCentral,(hueCentral+20)%360);
    x = 0;
    y = 0;
    brightness = 250;
    radius = random(50,100);
    t = random(0,1000);
    ht = random(0,2);
  }
  
  
  void display(){
    fill(hue,240,brightness,40); 
    ellipse(x,y, radius, radius);

  } 
  
  void move(float theBrightness){
    x = map(noise(t), 0,1, -300, width+300);
    y = map(noise(t+1000), 0,1, -300, height+300);
    radius = map(noise(t+2000), 0,1, 200, 800);
    hue = (map(noise(ht), 0,1,-100,800))%360;
    t+= 0.005;
    ht +=0.005;
    brightness = theBrightness;
    println(hue);   
  }
  
  

}
