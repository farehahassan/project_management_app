import 'package:intl/intl.dart';

class EFormatters {
  static String formatPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAllMapped(RegExp(r'^(\d{3})(\d{3})(\d{4})$'),
        (Match m) => '(${m[1]}) ${m[2]}-${m[3]}');
  }

  static String formatCurrency(String currency) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$')
        .format(double.parse(currency));
  }

  static String formatDateTime(String dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm a').format(DateTime.parse(dateTime));
  }

  static String formatDateTimeWithDay(String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm a')
        .format(DateTime.parse(dateTime));
  }

  static String formatDateTimeWithDayAndTime(String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm a')
        .format(DateTime.parse(dateTime));
  }

  static String formatDateTimeWithDayAndTimeAndSeconds(String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm:ss a')
        .format(DateTime.parse(dateTime));
  }

  static String formatDateTimeWithDayAndTimeAndSecondsAndTimeZone(
      String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm:ss a z')
        .format(DateTime.parse(dateTime));
  }

  static String formatDateTimeWithDayAndTimeAndTimeZone(String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm a z')
        .format(DateTime.parse(dateTime));
  }

  static String formatDateTimeWithDayAndTimeAndTimeZoneAndSeconds(
      String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm:ss a z')
        .format(DateTime.parse(dateTime));
  }

  static String
      formatDateTimeWithDayAndTimeAndTimeZoneAndSecondsAndMilliseconds(
          String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm:ss:SSS a z')
        .format(DateTime.parse(dateTime));
  }

  static String
      formatDateTimeWithDayAndTimeAndTimeZoneAndSecondsAndMillisecondsAndMicroseconds(
          String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm:ss:SSS:SSSS a z')
        .format(DateTime.parse(dateTime));
  }

  static String
      formatDateTimeWithDayAndTimeAndTimeZoneAndSecondsAndMillisecondsAndMicrosecondsAndNanoseconds(
          String dateTime) {
    return DateFormat('EEEE, MMMM d, y hh:mm:ss:SSS:SSSS:SSSSSS a z')
        .format(DateTime.parse(dateTime));
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAllMapped(
        RegExp(r'^(\d{1})(\d{3})(\d{3})(\d{4})$'),
        (Match m) => '+${m[1]} (${m[2]}) ${m[3]}-${m[4]}');
  }
}
