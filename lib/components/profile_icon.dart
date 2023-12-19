import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final String imageUrl;

  ProfileIcon({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
