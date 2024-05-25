import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'ImageDisplayPage.dart'; 

class GalleryButton extends StatefulWidget {
  const GalleryButton({Key? key}) : super(key: key);

  @override
  _GalleryButtonState createState() => _GalleryButtonState();
}

class _GalleryButtonState extends State<GalleryButton> {
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImageDisplayPage(image: File(pickedFile.path)),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _pickImage,
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(251, 225, 52, 1),
        minimumSize: const Size(150, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/upload.png',
            width: 50,
            height: 50,
          ),
          const Text(
            "Upload",
            style: TextStyle(
              color: Color.fromRGBO(42, 25, 29, 1),
              fontFamily: 'InriaSans',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
