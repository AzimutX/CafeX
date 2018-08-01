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
  int l1 = 100; // Вводятся длины звеньев
  int l2 = 100;
  float x = mouseX - 400; // Вводятся координаты конца второго звена
  float y = -mouseY + 300;
  float b = sqrt(x*x + y*y); // Вспомогательная величина для рассчетов углов
  float p = acos(x/b) - acos((l1*l1 - l2*l2 + b*b)/(2*b*l1)); // Рассчет углов
  float q = p + PI - acos((l1*l1 + l2*l2 - b*b)/(2*l2*l1));
  fill(255);
  ellipse(0, 0, 2*(l1 + l2), 2*(l1 + l2)); // Зона в которой могут находится x и y, исходя из длины звеньев
  color c = color(200, 100, 100); // Цвета координатных прямых 
  color cc = color(100, 200, 100);
  stroke(0);
  line(0, 0, cos(p)*l1, sin(p)*l1); // Расположение первого звена, исходя из рассчетов углов
  line(cos(p)*l1, sin(p)*l1, x, y); // Рассположение второго звена
  stroke(c);
  line(0, 0, (l1 + l2), 0); // Координатная ось х
  stroke(cc);
  line(0, 0, 0, (l1 + l2)); // Координатная ось y
  fill(153);
  ellipse(0, 0, 15, 15); // Начальная точка
  fill(153);
  ellipse(x, y, 15, 15); // Конечная точка
  println("Your value", p, q); // Вывод рассчитанных углов
  popMatrix(); 
}  
