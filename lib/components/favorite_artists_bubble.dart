import 'package:flutter/material.dart';

class FavoriteArtists extends StatelessWidget {
  const FavoriteArtists({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: CircleAvatar(
        radius: 70.0,
      ),
    );
  }
}
