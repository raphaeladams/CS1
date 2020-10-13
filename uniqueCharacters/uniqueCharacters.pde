//Given a string e.g. "Pre-zoom", write an algorithm to see if the given string has 
//all unique characters. If it does return true, if not return false. 
//The bad news is that you cannot use any other data structure except an array

boolean uniqueCharacters(String givenString) {
  //iterate through string, look at one character at a time
  //keep an array of characters already looked at
  //if current character = any previous characters, return false and stop looping
  //return true if we get through entire string without stopping
  
  char[] charactersLookedAt = new char[givenString.length()];
  charactersLookedAt[0] = givenString.charAt(0);
  
  for (int i = 1; i < givenString.length(); i++) {
    for (int j = 0; j < i; j++) {
      if (charactersLookedAt[j] == givenString.charAt(i)) {
        return false;
      }
    }
    charactersLookedAt[i] = givenString.charAt(i);
  }
  return true;
}

void setup() {
  String preZoom = "Pre-zoom";
  String qwerty = "Qwerty";
  String abc = "abc";
  String abcWithSpaces = "a b c";
  String given = "Given a string e.g. Pre-zoom, write an algorithm to see if the given string has all unique characters. If it does return true, if not return false. The bad news is that you cannot use any other data structure except an array";
  
  println(uniqueCharacters(preZoom)); //false
  println(uniqueCharacters(qwerty)); //true
  println(uniqueCharacters(abc)); //true
  println(uniqueCharacters(abcWithSpaces)); //false
  println(uniqueCharacters(given)); //false;
}
