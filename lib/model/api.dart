import 'package:http/http.dart' as http;
import 'dart:convert';

Future<ImageNasa> fetchImageUrl() async {
  final reponse = await http.get(
    Uri.parse("//api.nasa.gov/planetary/apod")
  );
  if (reponse.statusCode == 200) {
    var data = jsonDecode(reponse.body);
  return data('url');
  }else{
    throw Exception('failed to load image');
  }
}

class ImageNasa{
  final String url;
  final String title;

  ImageNasa({required this.url, required this.title});

  void afficherImage(){
    print("L'image est : $url et de titre : $title");
  }
}