//ASSUMPTIONS
//1. the given sequence is in an array
//2. any zeros are considered "divisible" by 3 or 5, since remainder is 0 for both

int n = 12;

void setup() {
  fizzBuzz(n);
}

void fizzBuzz(int givenN) {
  for (int i = 1; i < givenN; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      println("FizzBuzz");
    } else if (i % 3 == 0) {
      println("Fizz");
    } else if (i % 5 == 0) {
      println("Buzz");
    } else {
      println(i);
    }
  }
}
