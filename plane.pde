Vehicle plane;

void setup(){
  size(500,500);
  int midX = width /2;
  int midY = height/2;
  plane = new Vehicle(midX,midY);
}

void draw(){
  background(0,0);
  PVector mouse = new PVector(mouseX,mouseY);
  plane.update();
  plane.display();
  if(mousePressed == true){
    plane.flee(mouse);
  }else{
    plane.seek(mouse);
  }
}
