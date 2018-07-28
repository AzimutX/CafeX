void setup()
{
  size(800,600,P3D);
}

void draw()
{
  background(100);
  pushMatrix();
  translate(400, 300);
  rotateX(PI);
  int l1 = 200;
  int l2 = 200;
  float x = 50.0;
  float y = 300.0;
  float B = sqrt(x*x + y*y);
  float q1 = acos(x/B) - acos((l1*l1 - l2*l2 + B*B)/2*B*l1);
  float q2 = q1 + PI - acos((l1*l1 + l2*l2 - B*B)/2*l2*l1);
  ellipse(0, 0, l1 + l2, l1 + l2);
  color c = color(200, 100, 100);
  color cc = color(100, 200, 100);
  stroke(0);
  line(0, 0, cos(q1)*l1, sin(q1)*l1);
  line(cos(q1)*l1, sin(q1)*l1, x, y);
  stroke(c);
  line(0, 0, (l1 + l2)/2, 0);
  stroke(cc);
  line(0, 0, 0, (l1 + l2)/2);
  println("Your value", q1, q2);
  popMatrix(); 
}
