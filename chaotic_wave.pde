 float x0;
 float y0;
 float modx;
 float mody;
 float t;
 float mod;
 
void setup()  {
  size(800,800);
  background(0);
  stroke(255, 30);
  smooth();
  x0 = -200;
  y0 = 200;
  t = 0;
  modx = random(-10,10);
  mody = random(-10,10);
  mod = random(0.001,0.005);
  print_params();
}

void draw()  {
  translate(400,400);
  rotate(2*PI*t);
  line(x0, y0, x0*cos(modx*t), y0*sin(PI/2+(mody*t)));
  t = t + mod;
}


void print_params(){
  println(modx, mody, mod);
}

void keyReleased(){
      if (key == 'b'){
      frameCount = -1;
    } else if (key=='s') {
      saveFrame("frames/######.png");
    }
}
