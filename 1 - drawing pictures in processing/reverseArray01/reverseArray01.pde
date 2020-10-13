final int[] myArray = {
  0,
  99,
  7,
  4,
};

int counter = 0;

//we only need to reverse values until we get to the halfway point in the array
while (counter < myArray.length/2) {
  int valueHolder = myArray[counter]; //a third "placeholder" variable to perform the switch
  myArray[counter] = myArray[myArray.length-1-counter];
  myArray[myArray.length-1-counter] = valueHolder;
  counter++;
}

println(myArray); //should print reversed array
