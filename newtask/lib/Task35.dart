import 'package:path/path.dart' as p;

void main() {
  String filePath = "/home/user/documents/report.pdf";

  String directory = p.dirname(filePath);
  String filename = p.basename(filePath);
  String extension = p.extension(filePath);

  print("Directory: $directory");
  print("Filename: $filename");
  print("Extension: $extension");
}
