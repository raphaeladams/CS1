void casePractice(int givenNum) {
  switch (givenNum) {
  case 5:
    println("number is five");
    break;
  case 6:
    println("number is six");
    break;
  default:
    println("number is not five or six");
    break;
  }
}

void setup() {
  casePractice(5); 
  casePractice(6); 
  casePractice(100);
}
