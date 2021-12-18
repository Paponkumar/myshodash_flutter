import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Listproduct.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String name = '';
  String pass = '';

  File? imageFile;

  @override
  void initState() {
    // TODO: implement initState
    getShapref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 100,
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
                                decoration: BoxDecoration(color: Colors.black),
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
          DrawerHeader(
              child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.account_box,
                    size: 50,
                    color: Colors.lightGreenAccent,
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'User Name',
                    style: TextStyle(color: Colors.cyan),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Username@gmail.com',
                    style: TextStyle(color: Colors.cyan),
                  ))
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: Text('Home', style: TextStyle(color: Colors.cyan)),
                leading: Icon(
                  Icons.home,
                  color: Colors.lightGreenAccent,
                ),
                onTap: () {
                  Fluttertoast.showToast(
                      msg: 'Home', toastLength: Toast.LENGTH_LONG);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: Text('Profile', style: TextStyle(color: Colors.cyan)),
                leading: Icon(
                  Icons.pages_outlined,
                  color: Colors.lightGreenAccent,
                ),
                onTap: () {
                  Fluttertoast.showToast(
                      msg: 'Profile', toastLength: Toast.LENGTH_LONG);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: Text('Oder_List', style: TextStyle(color: Colors.cyan)),
                leading: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.lightGreenAccent,
                ),
                onTap: () {
                  Fluttertoast.showToast(
                      msg: 'Oder_List', toastLength: Toast.LENGTH_LONG);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: Text('Product_List', style: TextStyle(color: Colors.cyan)),
                leading: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.lightGreenAccent,
                ),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Listpro()));
                  Fluttertoast.showToast(
                      msg: 'Product_List', toastLength: Toast.LENGTH_LONG);
                },
              ),
            ),
          ),
        ],
      ),
    );
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
    getShapref() async {
      final pref = await SharedPreferences.getInstance();

      setState(() {
        name = pref.getString('user_name')!;
        pass = pref.getString('pass')!;
      });
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
