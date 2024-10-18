import 'date_util.dart';

void main() {
  DateTime now = DateUtils.getCurrentDateTime();

  // Formatting Date
  print(DateUtils.formatDate(now, format: 'dd/MM/yyyy')); // Output: 17/10/2024

  // Adding and subtracting days
  DateTime futureDate = DateUtils.addDays(now, 10);
  print('Future Date: ${DateUtils.formatDate(futureDate)}');

  DateTime pastDate = DateUtils.subtractDays(now, 10);
  print('Past Date: ${DateUtils.formatDate(pastDate)}');

  // Getting first and last day of month
  DateTime firstDay = DateUtils.getFirstDayOfMonth(now);
  DateTime lastDay = DateUtils.getLastDayOfMonth(now);
  print('First Day: ${DateUtils.formatDate(firstDay)}');
  print('Last Day: ${DateUtils.formatDate(lastDay)}');

  // Day and month names
  print('Day Name: ${DateUtils.getDayName(now)}');
  print('Month Name: ${DateUtils.getMonthName(now)}');

  // Leap year check
  print('Is leap year: ${DateUtils.isLeapYear(2024)}');

  // Days difference
  int daysDiff = DateUtils.getDaysDifference(pastDate, futureDate);
  print('Days Difference: $daysDiff');

  // Check if a date is in the future or past
  print('Is in future: ${DateUtils.isInFuture(futureDate)}');
  print('Is in past: ${DateUtils.isInPast(pastDate)}');
}
