class ImageNasa {
  final String title;
  final String url;

  ImageNasa({
    required this.title,
    required this.url,
  });

  factory ImageNasa.fromJson(Map<String, dynamic> json) {
    return ImageNasa(
      title: json['title'] ?? '',
      url: json['url'] ?? '',
    );
  }
  void Afficher() {
    print("Titre : $title et Url :$url");
  }
}
