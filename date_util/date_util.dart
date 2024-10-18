import 'package:intl/intl.dart';

class DateUtils {
  // Private constructor to prevent instantiation
  DateUtils._();

  /// Format a DateTime object to a string based on the provided format.
  /// Default format is 'yyyy-MM-dd'.
  static String formatDate(DateTime date, {String format = 'yyyy-MM-dd'}) {
    return DateFormat(format).format(date);
  }

  /// Parse a string into a DateTime object using the provided format.
  static DateTime? parseDate(String dateString,
      {String format = 'yyyy-MM-dd'}) {
    try {
      return DateFormat(format).parse(dateString);
    } catch (e) {
      print('Error parsing date: $e');
      return null;
    }
  }

  /// Get the current date and time.
  static DateTime getCurrentDateTime() {
    return DateTime.now();
  }

  /// Get the difference between two DateTime objects in days.
  static int getDaysDifference(DateTime from, DateTime to) {
    return to.difference(from).inDays;
  }

  /// Add days to a DateTime object.
  static DateTime addDays(DateTime date, int days) {
    return date.add(Duration(days: days));
  }

  /// Subtract days from a DateTime object.
  static DateTime subtractDays(DateTime date, int days) {
    return date.subtract(Duration(days: days));
  }

  /// Check if a year is a leap year.
  static bool isLeapYear(int year) {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          return true;
        } else {
          return false;
        }
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  /// Get the first day of the current month.
  static DateTime getFirstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  /// Get the last day of the current month.
  static DateTime getLastDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0);
  }

  /// Get the number of days in a specific month.
  static int getDaysInMonth(int year, int month) {
    var lastDay = DateTime(year, month + 1, 0);
    return lastDay.day;
  }

  /// Check if two dates are the same day.
  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  /// Get the name of the day for a given date.
  static String getDayName(DateTime date) {
    return DateFormat('EEEE').format(date); // 'Monday', 'Tuesday', etc.
  }

  /// Get the name of the month for a given date.
  static String getMonthName(DateTime date) {
    return DateFormat('MMMM').format(date); // 'January', 'February', etc.
  }

  /// Get the number of weeks between two dates.
  static int getWeeksDifference(DateTime from, DateTime to) {
    return to.difference(from).inDays ~/ 7;
  }

  /// Check if a date is in the future.
  static bool isInFuture(DateTime date) {
    return date.isAfter(DateTime.now());
  }

  /// Check if a date is in the past.
  static bool isInPast(DateTime date) {
    return date.isBefore(DateTime.now());
  }

  /// Get the start of the day for a given date (00:00:00).
  static DateTime startOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  /// Get the end of the day for a given date (23:59:59).
  static DateTime endOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  }
}
