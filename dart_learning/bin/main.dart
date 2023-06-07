void main() async {
  Solution solution = Solution();

  print(solution.countDigits(121));
}

class Solution {
  int countDigits(int n) {
    // List<String> uniqueList = n.toString().split('').toSet().toList();
    List<String> uniqueList = n.toString().split('');
    print(uniqueList);

    int result = 0;

    for (var digit in uniqueList) {
      if (n % int.parse(digit) == 0) {
        result = result + 1;
      }
    }

    return result;
  }
}
