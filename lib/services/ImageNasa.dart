class ImageNasa{
  String url;
  String title;

  ImageNasa({required this.url, required this.title});

  void afficheImage(){
    print("L'image est : $url et de titre : $title");
  }
}