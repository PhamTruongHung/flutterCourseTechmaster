void main() async {
  Solution solution = Solution();

  print(solution.lengthOfLastWord("Hello    world"));
}

class Solution {
  int lengthOfLastWord(String s) {
    String cleanedString = s.trim().replaceAll(RegExp(r'\s+'), ' ');

    List<String> words = cleanedString.split(' ');

    return words.last.length;
  }
}
