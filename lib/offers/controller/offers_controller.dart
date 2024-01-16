// offers controller to retrieve datas from firestore names 'offers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lpmi/offers/models/offers.dart';

class OffersController extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<Offer> _offers = [];

  Future<List<Offer>> fetchOffers() async {
    try {
      final offers = await _firestore.collection('offers').get();
      _offers = offers.docs.map((e) => Offer.fromDocument(e.data())).toList();
      return _offers;
    } catch (e) {
      throw e;
    }
  }

  List<Offer> get offers => _offers;
}
