void main() async {
  Solution solution = Solution();
  List<int> nums = [-4, -1, 0, 3, 10];

  print(solution.sortedSquares(nums));
}

class Solution {
  List<int> sortedSquares(List<int> nums) {
    List<int> numbers = nums;
    List<int> squaredNumbers =
        numbers.map((int number) => number * number).toList();

    print(squaredNumbers);

    print('squaredNumbers List: $squaredNumbers');
    bubbleSort(squaredNumbers);
    print('Sorted squaredNumbers List: $squaredNumbers');

    return squaredNumbers;
  }

  void bubbleSort(List<int> list) {
    int n = list.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          int temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
  }
}
