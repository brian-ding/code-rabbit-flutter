import 'package:http/http.dart' as http;

class UtilManager {
  final apiKey = "123456-abcdef-ghijkl";

  double calcD(double p, double d) {
    return p - (p * d / 100);
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    print(response.body);
  }
}
