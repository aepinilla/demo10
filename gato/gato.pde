Gato miGato;
Perro miPerro;

// Un comentario

void setup(){
   size(1000, 1000);
   // Inicializamos el objeto
   //                tempC,    tempPosX, tempPosY, tempVel
   miGato = new Gato(color(255,255,0), 0,      500,      5);
}

void draw() {
  background(255);
  miGato.mostrar();
  miGato.correr();
}

class Gato {
  // Constructor
  Gato(color tempC, float tempPosX, float tempPosY, float tempVel) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVel;
  }
  
  // Propiedades
  color c;
  float posX;
  float posY;
  float velocidad;
  
  // Métodos
  void mostrar() {
    fill(c);
    noStroke();
    circle(posX, posY, 50);
  }
  
  void correr() {
    posX = posX + velocidad;
  }
}

class Perro {}
