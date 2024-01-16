import 'package:http/http.dart' as http;
import 'dart:convert';

import 'ImageNasa.dart';

Future<ImageNasa> fetchImageUrl() async {
  final response = await http.get(
    Uri.parse('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY')
  );

  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    print(data);
    var img = ImageNasa(url: data['url'], title: data['title']);
    img.afficheImage();
    return img;
  } else {
    throw Exception('Failed to load image');
  }
}
