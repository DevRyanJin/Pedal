
void setup(){
  size(640,640,P3D); 
  
  colorMode(RGB, 1.0f);
  ortho(-1, 1, 1, -1);
  resetMatrix();
}

void draw(){

clear(); 
int numPetals = 60; //the number of petals for each color 
float angle = 1.5708f; //start with 90 degree
float petalX1 =0.0f; 
float petalY1 =0.0f;   
float petalWidth = 0.12f;  
float distance = 0.7f; // distance from the center(control the length of petal)
 
 
  for(int i=0; i<numPetals; i++){
    float petalX2 = distance*cos(angle);
    float petalY2 = distance*sin(angle); 
    float petalX3 = distance*cos(angle+petalWidth); 
    float petalY3 = distance*sin(angle+petalWidth);
    
    //draw different color
    if(i%5==0)
      fill(0.7f, 0.3f, 0.1f);
    else if(i%2 ==0)
      fill(0.6f, 0.1f, 0.4f);
    else
     fill(0.3f, 0.3f, 0.5f); 
     
    petal(petalX1, petalY1, petalX2, petalY2, petalX3, petalY3); //draw petal
    angle+= 2.3998277; //137.5 degree tranlated to radians 
    distance +=0.005;  //increase the petal length as we draw

  }
}

// draw traingle 
 void petal(float x1, float y1, float x2, float y2, float x3, float y3) {
   
  beginShape(TRIANGLES);
  vertex(x1, y1);
  vertex(x2, y2);
  vertex(x3, y3);

  endShape();

  }

 
  
  
  