Thing[] things = new Thing[1]; //declare object

void setup(){
  size(1500,1500);                                   // window size
  background(0,0,0);                                 // background color
  for(int i = 0; i < things.length; i++){
    things[i] = new Thing();
  }
  //noLoop();                     // call this so that draw() is called only once and we can control the iteration through 'for' loop in Thing class

  saveFrame("######.png");
}

void draw(){
  for(int i = 0; i < things.length; i++){            // calling the Thing class to draw the fractal
    things[i].iterate();
  }
    saveFrame("######.png");
}
