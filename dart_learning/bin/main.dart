import 'dart:math';

void main() async {
  Solution solution = Solution();

  print(solution.backspaceCompare("Hello world", "safsdf"));
}

class Solution {
  bool backspaceCompare(String s, String t) {
      List<String> st1 = [];
      List<String> st2 = [];
      
      for (var i=0; i < max(s.length, t.length); i++){
          if(s.length>=i+1){
              if (s[i]=='#' && st1.isNotEmpty){
                  st1.removeLast();
              } else if (s[i] != '#'){
                  st1.add(s[i]);
              }
          }
          if(t.length>=i+1){
              if (t[i]=='#' && st2.isNotEmpty){
                  st2.removeLast();
              } else if (t[i] != '#'){
                  st2.add(t[i]);
              }
          }
      }
    return st1.join() == st2.join();
  }
}
