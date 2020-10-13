String evenOrOdd(int givenNumber) {
  if ((float)givenNumber/2 == givenNumber/2) {
    return "Even"; 
  } else {
    return "Odd"; 
  }
}

void setup() {
  println(evenOrOdd(46)); //Even
  println(evenOrOdd(83)); //Odd
  println(evenOrOdd(100)); //Even
}
