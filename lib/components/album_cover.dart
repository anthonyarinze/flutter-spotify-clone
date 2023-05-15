import 'package:flutter/material.dart';

class AlbumCover extends StatelessWidget {
  final String coverUrl;
  final String name;
  final String artist;
  final bool isAlbum;
  const AlbumCover({
    super.key,
    required this.coverUrl,
    required this.name,
    required this.artist,
    this.isAlbum = true,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height / 4.5,
            width: size.width / 2.3,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: Image.network(
              coverUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                isAlbum ? 'Album' : 'Single',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                artist,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
