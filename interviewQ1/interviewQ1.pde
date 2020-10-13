/* We have received an array containing a random list of daily temperatures. We want to figure out the difference between the 
 lowest and highest temperatures so we can report the temperature range for that period. 
 Can you write a function/method that will calculate the difference between lowest and highest temperatures and print it out?
 Sample Input [ 20.00, 35.00, 37.50 ]
 Output : 17.50
 Problem input: [29.50, 35.50, 18.50, 38.00, 42.50, 47.50] */

class ArrayFunctions {

  //method tempDifference
  float tempDifference(float[] givenTemps) {
    float lowest = givenTemps[0];
    float highest = givenTemps[0];

    for (int i = 1; i < givenTemps.length; i++) {
      if (givenTemps[i] < lowest) {
        lowest = givenTemps[i];
      } else if (givenTemps[i] > highest) {
        highest = givenTemps[i];
      }
    }
    return(highest - lowest);
  }
}


void setup() {
  float[] sampleInput = { 20.00, 35.00, 37.50 };
  //tempDifference(sampleInput); //17.50

  float[] problemInput = { 29.50, 35.50, 18.50, 38.00, 42.50, 47.50 };
  //tempDifference(problemInput); //47.5 - 18.5 = 29
  
  ArrayFunctions testObject = new ArrayFunctions();
  println(testObject.tempDifference(sampleInput)); //17.50  
  println(testObject.tempDifference(problemInput)); //29.0
}
