int[] givenArray = {1,2,2,2,3,4,4,6,};

int uniqueNumbers = 1; //assuming we'll have at least one unique number in our answer

for (int i = 1; i < givenArray.length; i++) {
  boolean needToAddNumber = true;
  for (int j = 0; j < i; j++) {
    if (givenArray[j] == givenArray[i]) {
      needToAddNumber = false;
      break;
    }
  }
  if (needToAddNumber) {
    uniqueNumbers++;
  }
}

//the answer will be in a 2D array. Col 0 for unique numbers, Col 1 for occurrences
int[][] answer = new int[2][uniqueNumbers]; 

answer[0][0] = givenArray[0]; //we set Row 0 to the first number w/ 1 occurrence so far
answer[1][0] = 1;

int rowNumber = 1; //set up for Row 1

for (int i = 1; i < givenArray.length; i++) {
  boolean goToNextRow = true;
  for (int j = 0; j < i; j++) {
    if (givenArray[j] == givenArray[i]) {
      goToNextRow = false;
      for (int k = 0; k < rowNumber; k++) {
        if (answer[0][k] == givenArray[i]) {
          answer[1][k]++; //check which row has this number already, add 1 occurrence
          break;
        }
      }
      break;
    }
  }
  if (goToNextRow) {
    answer[0][rowNumber] = givenArray[i]; //fill a new row with this new number + 1st occurrence
    answer[1][rowNumber] = 1;
    rowNumber++;
  }
}

for (int i = 0; i < uniqueNumbers; i++) {
  println(answer[0][i], answer[1][i]);
}
