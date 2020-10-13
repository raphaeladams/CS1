void setup() {
  println(isItPrime(5));
}

boolean isItPrime(int givenNumber) {
  if (givenNumber == 2 || givenNumber == 3 || givenNumber == 5) {
    return true; 
  } else if (givenNumber == 1 || givenNumber%2 == 0 || givenNumber%3 == 0 || givenNumber%5 ==0) {
    return false; //1 is not prime, and most non-primes are divisible by 2, 3, or 5
  } else {
    //We only need to check divisors up to the square root of the given number.
    //We can start at the next prime, 7.
    //Any divisors larger than the square root will give quotients that we've checked already
    for (int i = 7; i <= sqrt(givenNumber); i++) {
      if (givenNumber % i == 0) {
        return false; //the number is divisible by something else besides itself & 1
      }
    }
    return true; //the number is only divisible by itself & 1
  }
}
