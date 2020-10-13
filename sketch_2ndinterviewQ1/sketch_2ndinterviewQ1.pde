/*It seems that someone has inadvertently removed the .rotate() method to rotate values in an array. The good news is, that it’s your task to rewrite part of it. 
Given an array A of integers, write a function to left rotate the array by n places.
Example: A= [1,2,3,4,5]  and n=2
Output = 3,4,5,1,2
Example: A = [1,2,3,4,5,6] and n=3
Output = 4,5,6,1,2,3 
*/

int[] arrayRotate(int[] givenArray, int pivot) {
  int[] arrayToReturn = new int[givenArray.length];   
  int index = 0;
  
  for (int i = pivot; i < arrayToReturn.length; i++) {
    arrayToReturn[index] = givenArray[i];
    index++; 
  }
  
  for (int i = 0; i < pivot; i++) {
    arrayToReturn[index] = givenArray[i];
    index++;
  }
  
  return arrayToReturn; 
}

void setup() {
  int[] example1 = {1,2,3,4,5};
  int[] example2 = {1,2,3,4,5,6};
  
  //println(arrayRotate(example1, 2)); //3,4,5,1,2
  println(arrayRotate(example2, 3)); //4,5,6,1,2,3 
}
