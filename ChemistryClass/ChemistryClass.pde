//Selection sort

import java.util.*;


class ChemClass {
  int[] grades; //an array of grades
  String[] students; //students

  final String courseCode = "CHEM1001";

  //selection sort, O(n^2), Omega(n^2)
  int[] gradeSort() {  
    if (grades.length <= 0) {
      return null;
    } else {
      int[] sortedGrades = grades;
      for (int i = 0; i < sortedGrades.length - 1; i++) {
        int smallestIndex = i;
        for (int j = i + 1; j < sortedGrades.length; j++) {
          if (sortedGrades[j] < sortedGrades[smallestIndex]) {
            smallestIndex = j;
          }
        }
        int swap = sortedGrades[smallestIndex];
        sortedGrades[smallestIndex] = sortedGrades[i];
        sortedGrades[i] = swap;
      }
      println(courseCode + " grades are sorted.");
      return sortedGrades;
    }
  }
  
  ChemClass(int[] grades, String[] students) {
    this.grades = grades;
    this.students = students;
  }
}


void setup() {
  //tests!
  /*int[] test1 = {3, 6, 2, 7, 0};
  int[] test2 = {3, 6, 3, 3, 3};
  int[] test3 = {1, 2, 3};
  int[] test4 = {};*/
  
  int[] grades2020 = {75, 55, 93, 80};
  String[] students2020 = {"joe", "bob", "sally", "megan"};
  
  ChemClass classOf2020 = new ChemClass(grades2020, students2020);
  println(Arrays.toString(classOf2020.gradeSort())); 
  

  /*println(Arrays.toString(selectionSort(test1))); //[0, 2, 3, 6, 7]
  println(Arrays.toString(selectionSort(test2))); //[3, 3, 3, 3, 6]
  println(Arrays.toString(selectionSort(test3))); //[1, 2, 3]
  println(Arrays.toString(selectionSort(test4))); //null*/
}
