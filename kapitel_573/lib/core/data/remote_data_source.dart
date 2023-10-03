import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

Future<String> getEstimatedAge(String text) async {
  try {
    var name;
    final response =
        await http.get(Uri.parse('https://api.agify.io?name=$name'));
    if (response.statusCode == 200) {
      final dynamic jsonData = jsonDecode(response.body);
      final int? age = jsonData['age'] as int?;
      if (age != null) {
        return age.toString();
      } else {
        return '';
      }
    }
  } catch (e) {
    debugPrint('Error fetching data: $e');
  }
  return '';
}
