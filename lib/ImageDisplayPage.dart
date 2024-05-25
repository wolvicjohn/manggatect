import 'package:flutter/material.dart';
import 'dart:io';

class ImageDisplayPage extends StatelessWidget {
  final File image;
  final String description;

  const ImageDisplayPage({
    Key? key,
    required this.image,
    this.description = 'YAWA NA TAO',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Image'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImage(),
            const SizedBox(height: 16.0),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (!image.existsSync()) {
      return const Text(
        'Image not found',
        style: TextStyle(color: Colors.red, fontSize: 18.0),
      );
    }

    try {
      return Image.file(image);
    } catch (e) {
      return const Text(
        'Failed to load image',
        style: TextStyle(color: Colors.red, fontSize: 18.0),
      );
    }
  }
}
