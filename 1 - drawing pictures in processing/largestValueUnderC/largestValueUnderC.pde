final int[] myArray = {
  2, 
  4, 
  4, 
  100, 
  6, 
};

final int C = 7;

int counter = 0;
int largestSoFar = myArray[0]; //this may or may not be less than the ceiling; we'll check later
boolean lessThanCExists = false;

//iterate thru array and look for largest value under C
while (counter < myArray.length) {
  if (myArray[counter]<C && myArray[counter]>=largestSoFar) {
    largestSoFar = myArray[counter];
    lessThanCExists = true;
  }
  counter++;
}

//check if a number less than C was ever actually found
//if not, ignore largestSoFar
if (!lessThanCExists) {
  println("None found");
} else {
  println("The biggest value under C was:",largestSoFar);
}
