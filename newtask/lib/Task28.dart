import 'dart:async';

Future<String> fetchWeather() async {
  print("Fetching weather data...");
  await Future.delayed(Duration(seconds: 2));
  print("Processing weather data...");
  await Future.delayed(Duration(seconds: 1));
  return "Weather data loaded successfully.";
}

void main() async {
  String result = await fetchWeather();
  print(result);
}
