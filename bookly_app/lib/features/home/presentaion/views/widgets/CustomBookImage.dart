// ignore: file_names
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
     this.url
  });
  final String? url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: url == null? Icon(Icons.error) : CachedNetworkImage(
            imageUrl: url!, fit: BoxFit.fill,
            )
        ),
      ),
    );
  }
}
