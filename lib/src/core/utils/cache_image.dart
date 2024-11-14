import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImageExtension extends StatelessWidget {
  const CacheImageExtension({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      // placeholder: (context, url) => const CircularProgressIndicator.adaptive(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
