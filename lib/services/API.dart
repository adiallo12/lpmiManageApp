import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Image_nasa.dart';

Future <Image_Nasa> fetchImageURL()async 
{
    final response = await http.get
    (
    Uri.parse('https//api.nasa.gov/planetary/apod?api_key=DEMO_KEY'),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var img = Image_Nasa(uri:data['url'], title: data['title']);
      img.afficheImg();

      return img;

    }else {
      throw(Exception('fail to load img'));
    }
} 