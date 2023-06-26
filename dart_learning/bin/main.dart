import 'dart:math';

void main() async {
  Solution solution = Solution();

  print(solution.countMatches([
    ["phone", "blue", "pixel"],
    ["computer", "silver", "lenovo"],
    ["phone", "gold", "iphone"]
  ], "color", "silver"));
}

class Solution {
  final listKey = ["type", "color", "name"];

  int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
    int getKeyIndex = listKey.indexOf(ruleKey);

    int result = 0;

    for (var i = 0; i < items.length; i++) {
      for (var j = 0; j < items[i].length; j++) {
        if (j == getKeyIndex && items[i][j] == ruleValue) {
          result = result + 1;
        }
      }
    }
    return result;
  }
}
