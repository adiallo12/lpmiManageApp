import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lpmi/models/imageNasa.dart';

Future<ImageNasa> fetchImageUrl() async {
  final response = await http.get(
    Uri.parse('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'),
  );

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    var img = ImageNasa(data['title'], data['url']);
    return img;
  } else {
    throw Exception('Failed to load image');
  }
}
