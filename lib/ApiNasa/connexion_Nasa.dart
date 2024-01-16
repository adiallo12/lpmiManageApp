import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lpmi/ApiNasa/image_nasa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ImageNasa? nasaImage;

  @override
  void initState() {
    super.initState();
    fetchDataFromNasaApi();
  }

  Future<void> fetchDataFromNasaApi() async {
    final apiKey = 'DEMO_KEY'; // Replace with your NASA API key
    final apiUrl = 'https://api.nasa.gov/planetary/apod?api_key=$apiKey';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        setState(() {
          nasaImage = ImageNasa.fromJson(data);
        });
      } else {
        throw Exception('Failed to load data from NASA API');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NASA Image of the Day'),
      ),
      body: Center(
        child: nasaImage == null
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(nasaImage!.url),
                  SizedBox(height: 16),
                  Text(nasaImage!.title),
                ],
              ),
      ),
    );
  }
}
