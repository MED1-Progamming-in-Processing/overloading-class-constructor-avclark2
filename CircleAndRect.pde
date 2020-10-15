Circle circle; //Activate the circle class
Circle rect;
boolean switcher = true; //Switch

//Set the size of the program.
void setup() {
  size(350, 350);
//Set the circle, rectangle and colour to a random size and colour. 
  circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), random(10, 50));
  rect = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), random(10, 50), random(10, 50));
  fill(random(0, 255), random(0, 255), random(0, 255));
//^Sets a random colour to the objects^
}

//Draws the background
void draw() {
  background(100);

//Print line "Switcher"
    println(switcher);
//Move circle and display the circle
    circle.move();
    circle.display();
//Move rectangle and display the rectangle
    rect.move();
    rect.display();
}
//if the mouse is clicked, switch the objects. (Circle <-> Rectangle)
void mouseClicked(){
  switcher= !switcher;
}
