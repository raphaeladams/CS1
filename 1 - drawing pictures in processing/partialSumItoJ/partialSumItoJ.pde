int[] arr = {1, -2, 3, 9, -2};

void setup() {
  int[][] tableOfValues = buildTable(arr);
  println(quickPartialSum(tableOfValues, 1, 3));
}

//assume i <= j
int partialSum(int[] givenArray, int i, int j) {
  int sum = 0;
  for (int k = i; k <= j; k++) {
    sum += givenArray[k];
  }
  return sum;
}

int[][] buildTable(int[] givenArray) {
  int[][] table = new int[givenArray.length][givenArray.length];  
  for (int i = 0; i < givenArray.length; i++) {
    for (int j = 0; j < givenArray.length; j++) {
      table[i][j] = partialSum(givenArray, i, j);
    }
  }
  return table;
}

int quickPartialSum(int[][] tableOfPartialSums, int i, int j) {
  int sum = tableOfPartialSums[i][j];
  return sum;
}
