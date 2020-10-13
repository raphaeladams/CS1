/*
Given an array of sorted distinct integers, write a function that accepts an array a[] and an integer n and returns the index 
at which n occurs.
Sample
a = [ 34, 45, 67, 89, 109, 207, 301]
n = 207
return  5
Problem Data:  a = [3, 7, 12, 18, 23, 33, 47, 68, 69, 70, 81, 93], n = 81
*/

int findValue(int[] givenArray, int givenValue) {
  for (int i = 0; i < givenArray.length; i++) {
    if (givenArray[i] == givenValue) {
      return i;
    }
  }
  return -1;
}

void setup() {
  int[] example1 = {34, 45, 67, 89, 109, 207, 301};
  int[] example2 = {3, 7, 12, 18, 23, 33, 47, 68, 69, 70, 81, 93}; 
  
  println(findValue(example1, 207)); //5
  println(findValue(example2, 81)); //10
}
