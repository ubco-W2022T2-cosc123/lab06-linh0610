// Add your code for this task below
void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  background(0);
  fill(255);
  
  // Map mouseX and mouseY to a range between 25% and 75% of the window width and height
  float mappedX = map(mouseX, 0, width, width * 0.25, width * 0.75);
  float mappedY = map(mouseY, 0, height, height * 0.25, height * 0.75);
  
  // Draw a circle at the mapped X and Y positions
  ellipse(mappedX, mappedY, 100, 100);
}
