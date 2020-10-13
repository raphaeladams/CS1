void setup() {
  int[] first = {3, 5, 45, 67, 99,};
  int[] second = {2, 4, 34, 37, 101,};
  int[] answer = combineSortedArrays(first, second);
  
  for (int i = 0; i < answer.length; i++) {
    println(i, answer[i]);
  }
}

int[] combineSortedArrays(int[] a, int[] b) {
  int[] c = new int[a.length + b.length];
  
  int aCounter = 0;
  int bCounter = 0;
  
  for (int i = 0; i < c.length; i++) {
    if (aCounter < a.length && ((bCounter >= b.length) || (a[aCounter] < b[bCounter]))) {
      c[i] = a[aCounter];
      aCounter++;
    } else if (bCounter < b.length && ((aCounter >= a.length) || (b[bCounter] <= a[aCounter]))) {
      c[i] = b[bCounter];
      bCounter++;
    }
  }  
  return c;
}
