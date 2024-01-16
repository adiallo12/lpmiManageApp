import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

Future<Image> fetchNasaImageUrl() async {
  final res = await http
      .get(Uri.parse('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'));
  if (res.statusCode == 200)
    return Image.network(jsonDecode(res.body)['url']);
  else
    throw Exception('Failed to load image');
}
