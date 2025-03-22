class NumerologyCalculator {
  static int calculateRootNumber(int day) {
    int sum = day;
    while (sum > 9) {
      String digitAsString = sum.toString();
      int tempSum = 0;
      for (int i = 0; i < digitAsString.length; i++) {
        tempSum += int.parse(digitAsString[i]);
      }
      sum = tempSum;
    }
    return sum;
  }

  static int calculateDestinyNumber(DateTime date) {
    String year = date.year.toString();
    String month = date.month.toString();
    String day = date.day.toString();

    String fullDate = year + month + day;
    int sum = 0;
    for (int i = 0; i < fullDate.length; i++) {
      sum += int.parse(fullDate[i]);
    }
    while (sum > 9) {
      int tempSum = 0;
      String digitAsString = sum.toString();
      for (int i = 0; i < digitAsString.length; i++) {
        tempSum += int.parse(digitAsString[i]);
      }
      sum = tempSum;
    }
    return sum;
  }
}
