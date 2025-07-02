import 'dart:convert';
import 'package:http/http.dart' as http;
//Task27
void main() async {
  String url = "https://jsonplaceholder.typicode.com/posts/1";

  try {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print("Data loaded:\n$data");
    } else {
      print("Error: Failed to load data.");
    }
  } catch (e) {
    print("Error occurred while fetching data.");
  }
}
