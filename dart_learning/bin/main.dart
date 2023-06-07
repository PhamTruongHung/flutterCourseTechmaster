void main() async {
  Solution solution = Solution();

  print(solution.largestOddNumber(2212234233524352122.toString()));
}

class Solution {
  String largestOddNumber(String num) {
    List<String> listOfStr = num.split('').toList();

    for (var i = listOfStr.length - 1; i >= 0; i--) {
      print(listOfStr[i]);
      if (int.parse(listOfStr[i]).isOdd) {
        return listOfStr.sublist(0, i + 1).join();
      }
    }

    return '';
  }
}
