

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


final ImagePicker _picker = ImagePicker();
var _imageFile;
@override
Widget Avatar(BuildContext context) {

  return Center(
    child: Stack(children: <Widget>[
      CircleAvatar(
        radius: 80.0,
        backgroundImage: _imageFile == null
            ? AssetImage("assets/man.jpeg")
            : FileImage(File(_imageFile.path)),
      ),
      Positioned(
        bottom: 20.0,
        right: 20.0,
        child: InkWell(
          onTap: () {

            showModalBottomSheet(
              context: context,
              builder: ((builder) => bottomSheet(context)),

            );
          },
          child: Icon(
            Icons.camera_alt,
            color: Colors.teal,
            size: 28.0,
          ),
        ),
      ),
    ]),
  );
}

Widget bottomSheet(BuildContext context) {
  return Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        Text(
          "Choose Profile photo",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.camera),
            onPressed: () {
              takePhoto(ImageSource.camera);
            },
            label: Text("Camera"),
          ),
          FlatButton.icon(
            icon: Icon(Icons.image),
            onPressed: () {
              takePhoto(ImageSource.gallery);
            },
            label: Text("Gallery"),
          ),
        ])
      ],
    ),
  );
}

void takePhoto(ImageSource source) async {
  final pickedFile = await _picker.getImage(
    source: source,
  );
  _imageFile = pickedFile;

}



