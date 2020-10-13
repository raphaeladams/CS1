class Monster{
  String name;
  int heads; 
  int eyes;
  int teeth; 
  
  void printName() {
    println("This is a " + name);
  }
  
  void howManyHeads() {
    println("This monster has " + heads + " heads");
  }
  
  void multipleMonsterEyes(int numMonsters) {
    println(numMonsters + " monsters of the same species have " + (numMonsters * eyes) + " eyes");
  }
  
  Monster(String monsterName, int numHeads, int numEyes, int numTeeth) {
    this.name = monsterName;
    this.heads = numHeads;
    this.eyes = numEyes;
    this.teeth = numTeeth;
  }
}

class Hydra : Monster {
}

void setup() {
  Monster hydra = new Monster("hydra", 2, 4, 500);
  hydra.printName();
  hydra.howManyHeads();
  hydra.multipleMonsterEyes(5);
}
