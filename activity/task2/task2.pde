// Add your code for this task below
final int W=64, H=64; //tile width and height
PImage bk, player, platform1, platform2;
int playerX = 256; // initial player x position
int playerY = 384; // initial player y position
boolean leftPressed = false;
boolean rightPressed = false;
boolean jumping = false;
int jumpCount = 0;

void setup(){
size(512,512);
bk = loadImage("background_0.png"); // 512 x 512
player = loadImage("player_0.png"); // 64 x 64
platform1 = loadImage("platform_13.png");// 64 x 64
platform2 = loadImage("platform_14.png");// 64 x 64
}

void draw(){
background(bk); 
if (leftPressed) {
playerX -= 5; 
} else if (rightPressed) {
playerX += 5; 
}

if (jumping) {
playerY -= 8; 
jumpCount++;
if (jumpCount >= 16) {
jumping = false;
jumpCount = 0;
}
} else {
if (playerY < 384) {
playerY += 8; 
}
}
if (playerX < 0) {
playerX = 0; 
} else if (playerX + W > width) {
playerX = width - W; 
}
image(player, playerX, playerY); 
image(platform1, 2*W, 7*H);
image(platform1, W, 7*H);
image(platform1, 3*W, 7*H);
image(platform1, 5*W, 7*H);
image(platform1, 4*W, 7*H);
image(platform1, 0, 7*H);
image(platform2, 6*W, 7*H); 
}

void keyPressed() {
if (keyCode == LEFT) {
leftPressed = true;
} else if (keyCode == RIGHT) {
rightPressed = true;
} else if (keyCode == 32 && !jumping) {
jumping = true;
}
}

void keyReleased() {
if (keyCode == LEFT) {
leftPressed = false;
} else if (keyCode == RIGHT) {
rightPressed = false;
}
}
