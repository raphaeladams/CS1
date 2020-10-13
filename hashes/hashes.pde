import java.util.*;

final String input = "abba";

void setup() {
  HashMap<String, Integer> answer = occurrences(input);

  for (Map.Entry me : answer.entrySet()) {
    print(me.getKey() + ": ");
    println(me.getValue());
  }
}

HashMap<String, Integer> occurrences(String givenString) {
  HashMap<String, Integer> hm = new HashMap<String, Integer>();
  for (int i = 0; i < givenString.length(); i++) {
    String letter = str(givenString.charAt(i));
    if (hm.containsKey(letter)) {
      hm.put(letter, hm.get(letter)+1);
    } else {
      hm.put(letter, 1);
    }
  }
  return hm;
}

//compare arrays with hashes



//iterating over hashes

//sorting hashes
