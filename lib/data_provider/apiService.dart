import 'dart:convert';

import 'package:asbeza/models/Asbeza.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ApiServiceProvider {

  Future<List?> fetchAsbeza() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    
    return Asbeza.asbezaList(json.decode(response.body));

    
  }


}
