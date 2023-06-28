void main() async {
  Solution solution = Solution();

  // print(solution.distributeCandy([1, 1, 2, 2, 3, 3]));
  print(solution.isAnagram("aacc", "ccac"));
}

class Solution {
  bool isAnagram(String s, String t) {
    Set sS = s.split("").toSet();
    Set tS = t.split("").toSet();
    sS.a

    print(sS.);
    print(tS);

    if (s.length != t.length || sS.length != tS.length) {
      return false;
    }

    if (sS.containsAll(tS)) {
      return true;
    } else {
      return false;
    }
  }
}
