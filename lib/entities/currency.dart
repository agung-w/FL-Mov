import 'package:intl/intl.dart';

class Currency {
  String toCurrencyID(String? value) {
    if (value != null) {
      final rupiah =
          NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0);
      String formated = rupiah.format(double.parse(value));
      return formated;
    } else {
      return "-";
    }
  }

  num toNum(String value) {
    return num.parse(value.replaceAll(RegExp(r'[Rp ,Rp,-.]'), ''));
  }
}
