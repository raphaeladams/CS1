//add up all the values in an array
//we'll make this a function, that accepts the array as input
//assume the array values are integers

int calculateArraySum (int[] givenArray) {
  int arraySum = 0;
  for (int arrayValue : givenArray) {
    arraySum += arrayValue;
  }
  return arraySum;
}

void setup() {
  int[] testArray = {1, 2, 3, 4, 5, 6,};
  println(calculateArraySum(testArray));
}
