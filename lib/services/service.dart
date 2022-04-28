import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fl_fetch_api_tk/models/model.dart';
import 'package:http/http.dart' as http;

import '../models/model.dart';

class Service {
  //Fetch or read data function
  Future<List<Model>> fetchdata() async {
    final response = await http.get(
        Uri.parse('https://my-json-server.typicode.com/easygautam/data/users'));
    List res1 = json.decode(response.body);
    print('res1=' + res1.toString());
    //Model.fromJson(json.decode(response.body));
    List<Model> res2 = res1.map((e) => Model.fromJson(e)).toList();
    print('res2=' + res2.toString());
    if (response.statusCode == 200) {
      print('resopnse.body=' + response.body);
      print('resopnse.length=' + response.body.length.toString());
      return res2;
    } else {
      // If that call was not successful (response was unexpected), it throw an error.
      throw Exception('Failed to load data');
    }
  }
}
