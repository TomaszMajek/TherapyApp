import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchWpPosts() async {
  final response = await http.get('http://planterapia.pl/index.php/wp-json/wp/v2/posts?-embed', headers:{"Accept":"application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}