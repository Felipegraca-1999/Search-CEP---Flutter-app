import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:search_cep/app/data/model/model.dart';

const baseUrl = 'https://viacep.com.br/ws/01001000/json/';

class MyApiClient {
  final http.Client httpClient;
  MyApiClient({@required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        List<Data> listData = jsonResponse['data'].map<Data>((map) {
          return Data.fromJson(map);
        }).toList();
        return listData;
      } else
        print('erro -get');
    } catch (_) {}
  }
}
