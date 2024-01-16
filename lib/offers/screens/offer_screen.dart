import 'package:flutter/material.dart';
import 'package:lpmi/components/profile_icon.dart';
import 'package:lpmi/offers/controller/offers_controller.dart';
import 'package:lpmi/offers/models/offers.dart';

class OffersScreen extends StatelessWidget {
  final OffersController offersController = OffersController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Section Offres"),
        actions: <Widget>[
          ProfileIcon(
              imageUrl:
                  'assets/images/profil_picture.jpg'), // Replace with the actual URL
        ],
      ),
      body: FutureBuilder<List<Offer>>(
        future: offersController.fetchOffers(), // Call the fetchOffers method
        builder: (BuildContext context, AsyncSnapshot<List<Offer>> snapshot) {
          if (snapshot.hasData) {
            List<Offer>? offers = snapshot.data;
            if (offers == null || offers.isEmpty) {
              return Text('No offers found');
            }
            return ListView.builder(
              itemCount: offers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(offers[index].titre),
                  subtitle: Text(offers[index].entreprise),
                  trailing: Text(offers[index].description),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
