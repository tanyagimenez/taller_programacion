int x=50;
int velx=10;
int y=50;
int vely=10;
int p = 0;
void setup(){
  size(800,600);
}

void draw(){
  background(100,0,0,0.8);
textSize(45);
text("Puntos: "+p, 40, 120); 
  circle (x,y,100);
  
  if(x>750 || x<50){
velx = velx*-1;
  }
  
  if(y>550 || y<50){
 vely=vely*-1;
  }
    if(x>mouseX && x<mouseX + 200 && y>350){
 vely=vely*-1;
 p++;
 
  }
  
  x=x+velx;
  
  y=y+vely;
  rect(mouseX,400,200,30);
 // si la pelota cae abajo, reinicia
if (y > 600) {
x = width/2;
y= height/2;
vely = 5;
velx = 5;
p=0;
}

}


  
