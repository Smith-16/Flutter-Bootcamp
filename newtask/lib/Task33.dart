import 'package:intl/intl.dart';

void main() {
  DateTime now = DateTime.now();
  NumberFormat currency = NumberFormat.currency(locale: 'en_IN', symbol: '₹');
  NumberFormat decimal = NumberFormat.decimalPattern('en_US');

  print("Formatted date: ${DateFormat.yMMMMd('en_US').format(now)}");
  print("Formatted currency: ${currency.format(123456.789)}");
  print("Formatted number: ${decimal.format(9876543.21)}");
}
