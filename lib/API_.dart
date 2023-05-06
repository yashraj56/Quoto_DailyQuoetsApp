import 'dart:convert';

import 'package:http/http.dart' as http;

var apiURL = "https://type.fit/api/quotes";

Future<List<dynamic>> getPost() async {
  final response = await http.get(Uri.parse(apiURL));
  return postFromJson(response.body);
}

/*
  postfromJson() Details ===>
  => The json.decode() method is used to parse the JSON string str into a List of dynamic objects.
  => The shuffle() method is called on the resulting List, which shuffles the
  order of its elements randomly.
  => The shuffled List is then returned.
  */

List<dynamic> postFromJson(String str) {
  List<dynamic> jsonData = json.decode(str);
  jsonData.shuffle();
  return jsonData;
}
