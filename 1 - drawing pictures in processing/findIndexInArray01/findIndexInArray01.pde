int findIndex(int[] data) {
  int index = 0;
  int firstSum = 0;
  int secondSum = data[0];

  while (index < (data.length-1)) {
    firstSum += data[index];
    secondSum += data[index+1];
    
    if (firstSum<100 && secondSum>=100) {
      //great! return the value and stop running
      return index;
    } else {
      index++;
    }
  }
  //if we make it out of this loop that means we didn't find a value
  return -1;
}

void setup() {
  int[] myArray = {
    98,
    1,
    1,
  };
  
  int answer = findIndex(myArray);
  
  println(answer);
}
