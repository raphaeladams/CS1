import java.util.*;

//CONVERT HASHES TO ARRAYS
HashMap<String, Integer> hashToConvert = new HashMap<String, Integer>(3);
hashToConvert.put("a", 1);
hashToConvert.put("b", 2);
hashToConvert.put("c", 3);

String[] arrayOfKeys = new String[hashToConvert.size()];
int[] arrayOfValues = new int[hashToConvert.size()];

int j = 0;
for (String i : hashToConvert.keySet()) {
  arrayOfKeys[j] = i;
  //println(arrayOfKeys[j]);
  j++;
}

j = 0;
for (int i : hashToConvert.values()) {
  arrayOfValues[j] = i;
  //println(arrayOfValues[j]);
  j++;
}


//CONVERT ARRAYS TO HASHES
//use arrayOfKeys and arrayOfValues from before
HashMap<String, Integer> hashFromArray = new HashMap<String, Integer>(arrayOfKeys.length);

for (int i = 0; i < arrayOfKeys.length; i++) {
  hashFromArray.put(arrayOfKeys[i], arrayOfValues[i]);
}

for (Map.Entry me : hashFromArray.entrySet()) {
  //print(me.getKey(), ", ");
  //println(me.getValue());
}


//COMPARE ARRAYS WITH HASHES

//ITERATING OVER HASHES

//SORTING HASHES
//hashes are unsorted by design; you're meant to find values using the keys
//rather than an index number (unlike arrays)

//To sort by keys, you can use a TreeMap with mappings of the HashMap: 
HashMap<String, Integer> unsorted = new HashMap<String, Integer>(3);
unsorted.put("z", 6);
unsorted.put("h", 7);
unsorted.put("a", 1);

TreeMap<String, Integer> sorted = new TreeMap<String, Integer>(unsorted);

println("HashMap after sorting by keys in ascending order");
for (Map.Entry me : sorted.entrySet()) {
  print(me.getKey(), ": ");
  println(me.getValue());
}
