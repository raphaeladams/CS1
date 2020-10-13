//variables
int counter;
int spacing;
final int numberOfNumbers = 25;

void setup() {
  size(800, 500); 
  background(255);
  counter = 1;

  spacing = width/(numberOfNumbers+1);
}

void draw() {
  while (counter <= numberOfNumbers) {
    if ((counter % 2) == 0) { //if numbers are even, make blue
      fill(0, 0, 255);
    } else { //if numbers are odd, make red
      fill(255, 0, 0);
    }
    text(counter, (counter*spacing), height/2);

    counter++;
  }
}
