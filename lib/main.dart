import 'package:flutter/material.dart';
import 'package:manggatect/aboutuspage.dart';
import 'package:manggatect/instructionspage.dart';
import 'package:manggatect/camera.dart';
import 'package:manggatect/gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello!'),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 230, 210, 23),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mango.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.of(context).pop(); // Close the drawer
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutUsPage(),
                ));
              },
            ),
            ListTile(
              title: Text('Instructions'),
              onTap: () {
                Navigator.of(context).pop(); // Close the drawer
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => InstructionsPage(),
                ));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Image.asset(
              'assets/mango.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 0),
            Text(
              'MANGGATECT',
              style: TextStyle(
                color: Color.fromRGBO(104, 24, 43, 1),
                fontFamily: 'InriaSans',
                fontSize: 39,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 214, 214, 214),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CameraButton(),
                SizedBox(width: 10),
                GalleryButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
