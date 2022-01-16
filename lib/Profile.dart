import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'HomePage.dart';

class Profile_info extends StatefulWidget {
  @override
  _Profile_infoState createState() => _Profile_infoState();
}

class _Profile_infoState extends State<Profile_info> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController keyboardTypeController = TextEditingController();
  TextEditingController EmailController = TextEditingController();

  int radiovalue = 0;
  int _valueradio = 0;
  DateTime? _dateTime;

  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 2));
    setState(() {
      _dateTime = date!;
    });
  }

  String name = '';
  String pass = '';

  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text("Profile info"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.blue],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 80,
                          child: displaySignatureFile(),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    child: Container(
                                      decoration:
                                          BoxDecoration(color: Colors.black),
                                      height: 100,
                                      child: Column(
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              _getFromcamera();
                                            },
                                            child: Text('Camera'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              _getFromGallery();
                                            },
                                            child: Text('gallery'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                            //
                          },
                          child: Text('Choose Image'))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: usernameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Fast Name',
                              hintText: 'Enter your Fast Name',
                              icon: Icon(
                                Icons.fastfood,
                                size: 30,
                                color: Colors.pink,
                              )),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          // controller: usernameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Last Name',
                              hintText: 'Enter your last Name',
                              icon: Icon(
                                Icons.drive_file_rename_outline,
                                size: 30,
                                color: Colors.pink,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      controller: EmailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Enter your Email',
                          icon: Icon(
                            Icons.attach_email,
                            size: 30,
                            color: Colors.pink,
                          )),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      // controller: usernameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Ph Number',
                          hintText: 'Enter your Ph Number',
                          icon: Icon(
                            Icons.phone_android,
                            size: 30,
                            color: Colors.pink,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55, right: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0, ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Flexible(
                              child: IconButton(
                            onPressed: () {
                              getDate();
                            },
                            icon: Icon(Icons.date_range_outlined),
                            color: Colors.pink,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flexible(
                              child: _dateTime == null
                                  ? Text("DD-MM-YYYY")
                                  : Text(
                                      'Date:${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}')),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: radiovalue,
                          onChanged: (Value) {
                            setState(() {
                              radiovalue = Value as int;
                            });
                          },
                        ),
                        Text('Male'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: radiovalue,
                          onChanged: (Value) {
                            setState(() {
                              radiovalue = Value as int;
                            });
                          },
                        ),
                        Text('FeMale'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: radiovalue,
                          onChanged: (Value) {
                            setState(() {
                              radiovalue = Value as int;
                            });
                          },
                        ),
                        Text('Other'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: radiovalue.toString(),
                              toastLength: Toast.LENGTH_LONG);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red),
                          child: Center(
                            child: Text('Submit',
                                style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 24))),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 300,
      maxHeight: 300,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  _getFromcamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 300,
      maxHeight: 300,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  Widget displaySignatureFile() {
    return new SizedBox(
      height: 480.0,
      width: 480.0,
      child: imageFile == null
          ? new Icon(Icons.camera_alt_outlined, size: 100)
          : ClipRRect(
              borderRadius: BorderRadius.circular(150.0),
              child: new Image.file(
                imageFile!,
                fit: BoxFit.fill,
              )),
    );
  }
}
