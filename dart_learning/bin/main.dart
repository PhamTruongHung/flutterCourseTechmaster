import 'dart:math';

void main() async {
  Solution solution = Solution();

  print(solution.sortArrayByParity([3, 1, 2, 4]));
}

class Solution {
  List<int> sortArrayByParity(List<int> nums) {
    List<int> oddList = [];
    List<int> evenList = [];

    for (var num in nums) {
      num.isEven ? evenList.add(num) : oddList.add(num);
    }
    evenList.addAll(oddList);
    return evenList;
  }
}
