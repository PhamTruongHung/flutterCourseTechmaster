void main() async {
  Solution solution = Solution();

  List<int> bills = [5, 5, 5, 10, 20];
  // List<int> bills = [5, 5, 10, 10, 20];

  print('\n Final result: ${solution.lemonadeChange(bills)}');
}

class Solution {
  bool lemonadeChange(List<int> bills) {
    int count5 = 0;
    int count10 = 0;
    int count20 = 0;
    int cashBack = 0;

    bool result = true;

    for (var bill in bills) {
      print('Start bill----');
      //Thu tien
      switch (bill) {
        case 5:
          count5 = count5 + 1;
          break;
        case 10:
          count10 = count10 + 1;
          break;
        case 20:
          count20 = count20 + 1;
          break;
        default:
      }

      //Tinh tien thoi
      cashBack = bill - 5;

      print(
          'Bill $bill -  Start cashBack: $cashBack - 20: $count20 - 10: $count10 - 5: $count5');

      //Thoi tien

      while (cashBack >= 20 && count20 > 0) {
        cashBack = cashBack - 20;
        count20 = count20 - 1;
      }

      while (cashBack >= 10 && count10 > 0) {
        cashBack = cashBack - 10;
        count10 = count10 - 1;
      }
      while (cashBack >= 5 && count5 > 0) {
        cashBack = cashBack - 5;
        count5 = count5 - 1;
      }
      print(
          'Bill $bill -  Current cashBack: $cashBack - 20: $count20 - 10: $count10 - 5: $count5');

      if (count20 >= 0 && count10 >= 0 && count5 >= 0 && cashBack == 0) {
        print(true);
        result = result || true;
      } else {
        return false;
      }
      print('End bill---- \n');
    }

    return true;
  }
}
