class Animal {
  String name;
  boolean fur;
  boolean mammal;

  final int eyes = 2;
  final boolean tail = true;

  int eyesInPack(int packSize) {
    //given a pack of these animals, how many eyes do they have? 
    return packSize * eyes;
  }

  boolean milk() {
    //mammals give milk to their babies
    if (mammal) {
      return true;
    }
    return false;
  }

  Animal(String name, boolean fur, boolean mammal) {
    this.name = name;
    this.fur = fur;
    this.mammal = mammal;
  }
}

void setup() {
  Animal mobyDick = new Animal("whale", false, true);
  println("Does a " + mobyDick.name + " give milk? " + mobyDick.milk()); 

  int numOfWhales = 5;
  println("A pod of " + numOfWhales + " " + mobyDick.name +
    "s has " + mobyDick.eyesInPack(numOfWhales) + " eyes");
}
