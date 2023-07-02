import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String newData = response.body;
      print(newData);

      var decodedData = jsonDecode(newData);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
