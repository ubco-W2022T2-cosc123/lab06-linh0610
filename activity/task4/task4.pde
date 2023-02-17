// Add your code for this task below
void setup() {
size(500, 500);
noStroke();
}

void draw() {
background(0);
fill(255);

// Constrain mouseX and mouseY to a range between 25% and 75% of the window width and height
float constrainedX = constrain(mouseX, width * 0.25, width * 0.75);
float constrainedY = constrain(mouseY, height * 0.25, height * 0.75);

// Draw a circle at the constrained X and Y positions
ellipse(constrainedX, constrainedY, 100, 100);
}
