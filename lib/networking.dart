import 'package:http/http.dart' as http;
import 'dart:convert';

final String url = 'https://api.covid19api.com/summary';

class NetworkHelper {
  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      print(response.body);
      // worldActive = jsonDecode(data)["Global"]["TotalConfirmed"];
      // worldDeaths = jsonDecode(data)["Global"]["TotalDeaths"];
      // worldRecovered = jsonDecode(data)["Global"]["NewRecovered"];
      // print(worldDeaths); //PRINTS CURRENT LIVE DATA
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
