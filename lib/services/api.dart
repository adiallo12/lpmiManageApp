import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lpmi/modeles/image_nasa.dart';



Future<ImageNasa> fetchImageUrl() async {
  
  final response = await http.get(
    Uri.parse('http://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'),
  );


  if(response.statusCode == 200) {
    var data = jsonDecode(response.body);
    return ImageNasa(data['url'],data['title']);

  }else{
    throw Exception('failed to load image');
  }
}

