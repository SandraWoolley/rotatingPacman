// Processing sketch rotating an animated Pac-Man encircled with rotating dots
// Keele University, Computer Science module CSC-10026 Computer animation and multimedia
// Sandra Woolley 14/01/2023

float r1=100; //Radius of motion for Pac-Man
float r2=40;  //Radius of motion for dots

void setup() {
  size (600, 400);
  noStroke();
}

void draw() {
  background(0);
  
  //Move to centre and draw rotating Pac-Man
  translate(width/2, height/2);
  rotate(millis()/2000.0);
  translate(0, -r1);
  float mouthAngle = abs(sin(millis()/130.0));      //Sine function for chomping effect
  fill(#FFFF00);                                    //Yellow fill colour
  arc(0, 0, 40, 40, mouthAngle, TWO_PI-mouthAngle); //Draw Pac-Man as an animated arc
  
  //Draw rotating circle of white dots
  fill(255);
  for (int i=0; i<12; i++) {
    push();
    rotate(millis()/900.0+TWO_PI*i/12.0);
    translate(0, r2);
    circle(0, 0, 5);
    pop();
  }
}
