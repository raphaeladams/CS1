int[] array = {4,};

void setup() {
  println(maxSubarraySum(array));
}

int maxSubarraySum(int[] givenArray) {
  int maxSum = givenArray[0];  
  for (int i = 0; i < givenArray.length; i++) {
    int sumSoFar = 0;
    for (int j = i; j < givenArray.length; j++) {
      sumSoFar += givenArray[j];
      if (sumSoFar > maxSum) {
        maxSum = sumSoFar;
      }
    }
  }
  return maxSum;
}
