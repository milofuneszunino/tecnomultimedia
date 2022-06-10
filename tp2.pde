boolean lineas;
float opacidad;
void setup () {
  size (500,500);
  strokeWeight(0.5);
  lineas=true;
}

void draw (){
  background(255,255,255);  
  dibujo(opacidad);
  opacidad=map (mouseY,0,height,0,300);
  line(0,height/3,width,height/3);
  line(0,(height/3)*2,width,(height/3)*2);
 
}

void dibujo(float opa){
  for (int i=-width; i<width*2; i+=width/10){   
    stroke(0,0,0,opa);
    line (i,0,width-i,height); 
    stroke(0,0,0);
  }
}
