class Thing{

  float x0, x1, x2, x3;
  float y0, y1, y2, y3;
  
  float particlex = 0, particley = 0;                                // initialise the particle coordinates
  int particlesize = 1;                                              // initialise the particle size
  
  int select;
  
  float s = 1200;                                                     // length of the triangle side
  
  Thing(){ 
    
                                                                     
    x0 = width/2;                                                    // x0,y0 are the coordinates for the centroid of the triangle, it is being used to calculate the other 3 points of the triangle
    y0 = height/2;                                                   // x0,y0 are the coordinates for the centroid of the triangle, it is being used to calculate the other 3 points of the triangle
    
    x1 = x0;
    y1 = x0-(s/sqrt(3));
    
    x2 = x0+(s/2);
    y2 = y0+((sqrt(3)*s)/6); 
    
    x3 = x0-(s/2);
    y3 = y0+((sqrt(3)*s)/6);

  }

  void iterate(){
    noStroke();                                                       // particles wont have an outline
    fill(0,255,0);                                                    // particles color
// *********************Chaos game method start***************************
    for (int i =0; i < 5000; i++){
      
      select = int(random(0,4));                                     // pick random vertex of the triangle
   
      switch(select){                                                // calling "Point" function based on the selection of the vertex
        case 0:
          point(x1,y1);
          break;
        case 1:
          point(x2,y2);
          break;
        case 3:
          point(x3,y3);
          break;
        default:                                                      // edge case handling so that any unintended value doesnt draw any point
          break;
      }

    }
// *********************Chaos game method end***************************
  }  
  
  void point(float x, float y){                                       // function to draw the point
    particlex = ((particlex+x)/2);
    particley = ((particley+y)/2);
    ellipse(particlex,particley,particlesize,particlesize);
  }
  
}
