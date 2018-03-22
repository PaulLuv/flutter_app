import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Image Picker Demo',
      home: ImagePickerHomePage(title: 'Image Picker Example'),
    );
}

class ImagePickerHomePage extends StatefulWidget {
  ImagePickerHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ImagePickerHomePage> {
  Future<File> _imageFile;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
          child: FutureBuilder<File>(
              future: _imageFile,
              builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return new Image.file(snapshot.data);
                } else {
                  return const Text('You have not yet picked an image.');
                }
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _imageFile = ImagePicker.pickImage();
          });
        },
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
}