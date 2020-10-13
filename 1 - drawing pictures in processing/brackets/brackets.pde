String bracketList = "(())()()";

void setup() {
  println(balancedParenthesis(bracketList));
}


boolean balancedParenthesis(String givenList) {
  int unbalanced = 0; // tracks the number of parentheses that need to be balanced

  // iterate through each character in the string
  for (int i = 0; i < givenList.length(); i++) {
    if (unbalanced == 0 && givenList.charAt(i) == ')' ) {
      // a closing parenthesis with no opener, this will always be unbalanced
      return false;
    } else if (givenList.charAt(i) == '(' ) {
      // add another opening parenthesis that needs to be closed
      unbalanced++;
    } else if (givenList.charAt(i) == ')' ) {
      // close the nearest open parenthesis
      unbalanced--;
    } else {
      // invalid character
      return false;
    }
  }
  
  // once we've looked at all the given characters, return true if the parentheses are balanced and false otherwise
  return (unbalanced == 0);
}
