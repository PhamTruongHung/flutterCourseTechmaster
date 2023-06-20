void main() async {
  Solution solution = Solution();

  print(solution.findTheDifference("ae", "aea"));
}

class Solution {
  String findTheDifference(String s, String t) {
    List<String> charactersT = t.split('');
    charactersT.sort();
    print(charactersT.toString());

    List<String> charactersS = s.split('');
    charactersS.sort();
    print(charactersS.toString());

    for (var i = 0; i < charactersS.length; i++) {
      // print(i.toString());
      if (charactersS[i] == charactersT[i]) {
        // print('$i - ${charactersS[i]} ${charactersT[i]}');
      } else {
        return charactersT[i];
      }
    }

    return charactersT.last;
  }
}
