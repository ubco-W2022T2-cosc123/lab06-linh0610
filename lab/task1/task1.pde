//Q1
// Add your code for this task below
final int W=64, H=64;         //tile width and height
PImage bk,bg, player, platform1, platform2,building,flag,banner,banner2,door,enemies;

void setup(){
  size(640,480);
  enemies = loadImage("enemyFloating_1.png");
  door = loadImage("doorRed_lock.png");
  banner = loadImage("medievalTile_075.png");
  banner2 = loadImage("medievalTile_029.png");
  flag = loadImage("flagGreen_up.png");
  building = loadImage("blockBrown.png");
  bg = loadImage("set2_background.png");
  bk = loadImage("set3_tiles.png");      
  player = loadImage("playerGreen_duck.png");      // 64 x 64
  platform1 = loadImage("tileBrown_02.png");// 64 x 64
  platform2 = loadImage("tileBrown_03.png");// 64 x 64
}

void draw(){
  background(bg);
  image(bk,0,0); 
  image(player, mouseX, 6.5*H); 
  image(platform1, 2*W, 7*H);
  image(platform1, W, 7*H);
  image(platform1, 3*W, 7*H);
  image(platform1, 5*W, 7*H);
  image(platform1, 4*W, 7*H);
  image(platform1, 0, 7*H);// draw the first platform image at (2*W, 7*H)
  image(platform1, 6*W, 7*H); // draw the second platform image at (3*W, 7*H)
  image(platform1, 7*W, 7*H);
  image(platform2, 8*W, 7*H);
  image(building, W,6*W);
  image(building, 2*W,6*W);
  image(building, 3*W,6*W);
  image(building, W,5*W);
  image(building, 2*W,5*W);
  image(building, 3*W,5*W);
  image(building, W,4*W);
  image(building, 2*W,4*W);
  image(building, 3*W,4*W);
  image(building, W,3*W);
  image(building, 2*W,3*W);
  image(building, 3*W,3*W);
  
  image(flag,2.5*W,2*H);
  image(banner2, 2*W,3*H);
  image(banner, 2*W,4*H);
  image(door,2*W,6*H);
  image(enemies,5*W, 5*H);
  image(enemies,6*W, 3*H);
  image(enemies,4*W, 1*H);
  image(enemies,8*W, 5*H);
}
