import 'dart:convert';

import 'package:asbeza/models/Asbeza.dart';
import 'package:http/http.dart' as http;

class ApiServiceProvider {

  Future<Asbeza?> fetchAsbeza() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return Asbeza.fromJson(json.decode(response.body));
    }
  }


}
