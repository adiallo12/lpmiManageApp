import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final String imageUrl;

  const ProfileIcon({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
