import 'package:cloud_firestore/cloud_firestore.dart';

class Offer {
  String id;
  String description;
  String entreprise;
  String titre;
  Timestamp date;

  Offer({
    required this.id,
    required this.description,
    required this.entreprise,
    required this.titre,
    required this.date,
  });

  factory Offer.fromDocument(Map<String, dynamic> json) => Offer(
        id: json['id'] ?? '',
        description: json['description'] ?? '',
        entreprise: json['entreprise'] ?? '',
        titre: json['titre'] ?? '',
        date: json['date'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'entreprise': entreprise,
        'titre': titre,
        'date': date,
      };
}

class Offers {
  List<Offer> offers;

  Offers({required this.offers});

  factory Offers.fromJson(List<dynamic> json) {
    List<Offer> offers = <Offer>[];
    offers = json.map((e) => Offer.fromDocument(e)).toList();

    return Offers(offers: offers);
  }
}
