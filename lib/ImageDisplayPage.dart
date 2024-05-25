import 'package:flutter/material.dart';
import 'dart:io';

class ImageDisplayPage extends StatelessWidget {
  final File image;

  const ImageDisplayPage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Image'),
      ),
      body: Center(
        child: Image.file(image),
      ),
    );
  }
}
