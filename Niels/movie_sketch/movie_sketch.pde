PImage ;
int red;
int green;
int blue;

import processing.video.*;
Movie myMovie;


void setup() {
  size(500, 500);
  myMovie = new Movie(this, "Walk on the Moon.mp4");
  myMovie.loop();
  
 red = 185;
 green = 220;
 blue = 248;
}

void draw() {
  tint(255, 20);
  image(myMovie, mouseX, mouseY);
  
  loadPixels();
  myMovie.loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;
//      println(loc);
      float r = red(myMovie.pixels[loc]);
      float g = green(myMovie.pixels[loc]);
      float b = blue(myMovie.pixels[loc]);
      
      if( r == red && g == green && b == blue){
        
        // vul hier de nieuwe kleur van de pixel in die je vervangen wou hebben
         r = 0;
         g = 0;
         b = 0;
      }
      pixels[loc] =  color(r,g,b);
    }
  }
  updatePixels();
  textSize(20);
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}