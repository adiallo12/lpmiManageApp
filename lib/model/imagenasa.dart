import  "package:http/http.dart" as http;
import "dart:convert" ;
import "package:flutter/material.dart" ;

Future<imagenasa> fetchimagenasa() async {
  final response = await http.get(Uri.parse('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
return data('url');

    return imagenasa.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load imagenasa');
  }
}

class imagenasa {
  final String title;
  final String url;
  final String explanation;

  imagenasa({required this.title, required this.url, required this.explanation});

  factory imagenasa.fromJson(Map<String, dynamic> json) {
    return imagenasa(
      title: json['title'],
      url: json['url'],
      explanation: json['explanation'],
    );
  }
}

