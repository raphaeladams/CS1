final int[] numbers = new int[10];
final int[] sortedNumbers = new int[10];

boolean showSorted;

void setup() {
  size(500, 200);

  showSorted = false;

  // Fill both arrays with the same numbers
  int num = 0;
  while (num < numbers.length) {
    numbers[num] = (int)random(0, 30);
    sortedNumbers[num] = numbers[num];

    num++;
  }

  // Sort the second array
  bubbleSort(sortedNumbers);
}

void draw() {
  background(255);
  textAlign(CENTER, CENTER);

  final int buttonWidth = 40;

  int[] array;
  if (showSorted) {
    array = sortedNumbers;
  } else {
    array = numbers;
  }

  float spaceBetween = (width - (buttonWidth*array.length)) /
    (array.length + 1);

  int buttonNum = 0;
  while (buttonNum < array.length) {
    float buttonHeight = array[buttonNum] * 2;

    float x = (buttonNum+1)*spaceBetween + buttonNum*buttonWidth;
    float y = height/2 - buttonHeight/2;

    fill(230);   
    rect(x, y, buttonWidth, buttonHeight);

    fill(0);
    text(array[buttonNum], x + buttonWidth/2, y + buttonHeight/2);  

    buttonNum++;
  }
}

void keyPressed() {
  showSorted = !showSorted;
}

//////////////////////

void insertionSort(int[] numbers) {
  int i = 1;
  int j = i;
  while (i < numbers.length) {
    if (j > 0 && (numbers[j] < numbers[j-1])) {
      numbers[j] += numbers[j-1];
      numbers[j-1] = numbers[j] - numbers[j-1];
      numbers[j] -= numbers[j-1];
      j--;
    } else {
      i++;
      j = i;
    }
  }
}

//////////////////////

void selectionSort(int[] numbers) { 
  for (int i = 0; i < (numbers.length-1); i++) {
    int smallestIndex = i;
    for (int j = i+1; j < numbers.length; j++) {
      if (numbers[j] < numbers[smallestIndex]) {
        smallestIndex = j;
      }
    }
    if (smallestIndex != i) {
      numbers[i] += numbers[smallestIndex];
      numbers[smallestIndex] = numbers[i] - numbers[smallestIndex];
      numbers[i] -= numbers[smallestIndex];
    }
  }
}

//////////////////////

void bubbleSort(int[] numbers) {
  int unsortedLength = numbers.length;
  int i = 1;
  while (unsortedLength > 1) {
    if (numbers[i] < numbers[i-1]) {
      numbers[i] += numbers[i-1]; 
      numbers[i-1] = numbers[i] - numbers[i-1];
      numbers[i] -= numbers[i-1];
    }
    i++;
    if (i >= unsortedLength) {
      unsortedLength--;
      i = 1;
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  /*int unsortedLength = numbers.length;
  int i = 0;
  while (unsortedLength > 1) {
    if (numbers[i] > numbers[i+1]) {
      int swapValue = numbers[i+1];
      numbers[i+1] = numbers[i];
      numbers[i] = swapValue;
    }
    i++;
    if (i >= (unsortedLength-1)) {
      i = 0;
      unsortedLength--;
    }
  }*/
}
