class Line{

  float x;
  float y;
  int type;
  float hue;
  float opacity;

  Line(float x_, float y_, float hue_, float opacity_, int type_){
    x = width/2;
    y = height/2;
    hue = hue_;
    opacity = 10;
    type = type_;
  }
  
  
  void display(){
    
    fill(hue,180,360,opacity);
    rectMode(CENTER);
    
    if (type == 0){
      rect(x, y, 300, 2000);
    }
    else{
      rect(x,y,2000,300);
    }

  } 
  
  void move(float theOpacity){
    if (type == 1){
       y+= 10; 
    }
    else{
     x+=10;
     
    }
      
    opacity = theOpacity;
    
    if (x>width+1200 || x<-500){
      newLine();   
    }
    
    if (y>height+800 || y<-500){
      newLine(); 
    }

    
  }
  
   void newLine(){
     type = (int(random(0,2)));
     hue = random(hueCentral,(hueCentral+100)%360);
     
     if (type ==0){
       y = height/2;
       x = random(-800, -200);
       
     }
     else{
       x = width/2;
       y = random(-800, -200);
     }
       
   }

}
