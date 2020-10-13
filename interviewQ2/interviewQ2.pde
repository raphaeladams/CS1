/*Given an array of sorted continuous  integers from 1 to n. That is an array of integers starting at 1.  
 Write a method to find the missing integer in the array. We want the integer that is missing returned.
 Example [1,2,4,5,6]  return 3
 Example [1,2,3,4,5,6,8,9] return 7*/

void setup() {
  int[] givenArray = { 1, 2, 4, 5, 6}; //3
  int[] givenArray2 = { 2, 4, 6, 7, 8, 9 }; //5

  if (givenArray2[0] != 1) {
    println(1);
  } else {
    for (int i = 1; i < givenArray2.length; i++) {
      if (givenArray2[i] != givenArray2[i-1] + 1) {
        println(givenArray2[i-1] + 1);
        break;
      }
    }
  }
}
