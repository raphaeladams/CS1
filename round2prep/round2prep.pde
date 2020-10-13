import java.util.Arrays;

class Student {
  String name;
  int[] marks;

  int[] selectionSortMarks() {
    int[] arrayToReturn = marks;
    for (int i = 0; i < arrayToReturn.length - 1; i++) {
      int smallestIndex = i;
      for (int j = i + 1; j < arrayToReturn.length; j++) {
        if (arrayToReturn[j] < arrayToReturn[smallestIndex]) {
          smallestIndex = j;
        }
      }
      int swap = arrayToReturn[i];
      arrayToReturn[i] = arrayToReturn[smallestIndex];
      arrayToReturn[smallestIndex] = swap;
    }
    return arrayToReturn;
  }
    
  int[] insertionSortMarks() {
    int[] arrayToReturn = marks;
    for (int i = 1; i < arrayToReturn.length; i++) {
      int j = i;
      while (j > 0 && arrayToReturn[j] < arrayToReturn[j-1]) {
        int swap = arrayToReturn[j];
        arrayToReturn[j] = arrayToReturn[j-1];
        arrayToReturn[j-1] = swap;
        j--;
      }
    }
    return arrayToReturn;
  }
  
  int[] bubbleSortMarks() {
    int[] arrayToReturn = marks;
    for (int sortedPortionLength = 0; sortedPortionLength < arrayToReturn.length; sortedPortionLength++) {
      for (int i = 1; i < arrayToReturn.length - sortedPortionLength; i++) {
        if (arrayToReturn[i] < arrayToReturn[i-1]) {
          int swap = arrayToReturn[i];
          arrayToReturn[i] = arrayToReturn[i-1];
          arrayToReturn[i-1] = swap;
        }
      }
    }
    return arrayToReturn;
  }

  Student(String name, int[] marks) {
    this.name = name;
    this.marks = marks;
  }
}



void setup() {
  /*int[] test1 = {6, 1, 3, 0};
  int[] test2 = {1, 2, 3};
  int[] test3 = {8, 6, 3, 9};

  println(Arrays.toString(selectionSort(test1))); //[[0, 1, 3, 6]
  println(Arrays.toString(selectionSort(test2))); //[1, 2, 3]
  println(Arrays.toString(selectionSort(test3))); //[3, 6, 8, 9]*/
  
  int[] johnnyMarks = {90, 85, 75, 60, 100, 25};
  Student johnny = new Student("John Greenwood", johnnyMarks);
  
  println(Arrays.toString(johnny.marks)); //[90, 85, 75]
  println(johnny.name); //John Greenwood
    
  println(Arrays.toString(johnny.selectionSortMarks()));
  println(Arrays.toString(johnny.insertionSortMarks()));
  println(Arrays.toString(johnny.bubbleSortMarks())); 
}
