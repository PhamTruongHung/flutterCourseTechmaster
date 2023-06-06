void main() async {
  Solution solution = Solution();

  print(solution.isPowerOfTwo(1));
}

class Solution {
  bool isPowerOfTwo(int n) {
    int currentPowerOfTwo = 1;

    if (n == 1) {
      return true;
    }

    while (currentPowerOfTwo <= n) {
      currentPowerOfTwo = currentPowerOfTwo * 2;
      if (currentPowerOfTwo == n) {
        return true;
      }
    }

    return false;
  }
}
