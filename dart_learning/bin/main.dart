void main() async {
  Solution solution = Solution();
  String paragraph =
      "..Bob hit a ball, the hit BALL flew far after it was hit.";
  List<String> banned = ["hit"];

  print(solution.mostCommonWord(paragraph, banned));
}

class Solution {
  String mostCommonWord(String paragraph, List<String> banned) {
    // Create a map to store word frequencies
    Map<String, int> wordFreq = {};

    // Split the paragraph into words
    List<String> words = paragraph.toLowerCase().replaceAll(".", "").split(RegExp(r'\W+'));

    print(words);

    // Count the frequency of each word
    for (String word in words) {
      if (!banned.contains(word)) {
        wordFreq[word] = (wordFreq[word] ?? 0) + 1;
      }
    }

    print(wordFreq);

    // Find the most frequent word
    String mostFrequent = '';
    int maxFreq = 0;
    for (String word in wordFreq.keys) {
      if ((wordFreq[word] ?? 0) > maxFreq) {
        mostFrequent = word;
        maxFreq = wordFreq[word] ?? 0;
      }
    }

    return mostFrequent;
  }
}
