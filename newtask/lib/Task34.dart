import 'dart:io';
import 'package:qr/qr.dart';

void main() {
  String data = "https://dart.dev";
  QrCode qr = QrCode(4, QrErrorCorrectLevel.L);
  qr.addData(data);
  qr.make();

  for (int x = 0; x < qr.moduleCount; x++) {
    for (int y = 0; y < qr.moduleCount; y++) {
      stdout.write(qr.isDark(x, y) ? "██" : "  ");
    }
    print("");
  }
}
