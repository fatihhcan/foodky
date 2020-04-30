import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Leading extends StatefulWidget {
  Leading({Key key}) : super(key: key);

  @override
  _LeadingState createState() => _LeadingState();
}

class _LeadingState extends State<Leading> {
  File imageFile;

  _openGallary(BuildContext context) async {
    var picture =
        imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture =
        imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Make a Choice"),
              content: SingleChildScrollView(
                  child: ListBody(
                children: <Widget>[
                  GestureDetector(
                      child: Text("Gallary"),
                      onTap: () {
                        _openGallary(context);
                      }),
                  Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                      child: Text("Camera"),
                      onTap: () {
                        _openCamera(context);
                      })
                ],
              )));
        });
  }

  Widget _decideImageView() {
    if (imageFile == null) {
      return Text("No Image Selected!",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30));
    } else {
      Image.file(imageFile, width: 400, height: 400);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Foodky",
            style: TextStyle(
                fontFamily: "Montserrat", fontWeight: FontWeight.w800)),
        centerTitle: false,
        backgroundColor: Colors.orange.shade500,
      ),
      body: Container(
        color: Colors.orange.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30, width: 30),
              Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 6)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orangeAccent, width: 5)),
                      labelText: "Write Post",
                      contentPadding: EdgeInsets.fromLTRB(50, 20, 20, 50)),
                ),
              ),
              SizedBox(height: 100, width: 100),
              _decideImageView(),
              SizedBox(height: 220, width: 220),
              RaisedButton(
                color: Colors.orangeAccent,
                elevation: 5,
                onPressed: () {
                  _showChoiceDialog(context);
                },
                child: Text("Select Image",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              RaisedButton(
                  color: Colors.orangeAccent,
                  elevation: 5,
                  onPressed: () {},
                  child: Text(
                    "Share",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
