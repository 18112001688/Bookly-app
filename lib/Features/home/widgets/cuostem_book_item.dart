import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustemBookImage extends StatelessWidget {
  const CustemBookImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: image,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
