import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheExampel extends StatefulWidget {
  const CacheExampel({super.key});

  @override
  State<CacheExampel> createState() => _CacheExampelState();
}

class _CacheExampelState extends State<CacheExampel> {
   final String imageUrl =
      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cached Network image"),
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: 200,
          height: 200,
          fit: BoxFit.cover,

          placeholder: (context, url) =>
              CircularProgressIndicator(),

          errorWidget: (context, url, error) =>
              Icon(Icons.error, size: 40),
        ),
      ),
    );
  }
}