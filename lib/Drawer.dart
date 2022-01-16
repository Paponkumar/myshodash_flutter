import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myshodash/login.dart';
import 'package:myshodash/Profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AboutUs.dart';
import 'Listproduct.dart';
import 'HomePage.dart';
import 'Privecy policy.dart';

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
          // Container(
          //   child: Column(
          //     children: [
          //       Container(
          //         child: CircleAvatar(
          //           radius: 80,
          //           child: displaySignatureFile(),
          //         ),
          //       ),
          //       TextButton(
          //           onPressed: () {
          //             showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return Dialog(
          //                     child: Container(
          //                       decoration: BoxDecoration(color: Colors.black),
          //                       height: 100,
          //                       child: Column(
          //                         children: [
          //                           TextButton(
          //                             onPressed: () {
          //                               _getFromcamera();
          //                             },
          //                             child: Text('Camera'),
          //                           ),
          //                           TextButton(
          //                             onPressed: () {
          //                               _getFromGallery();
          //                             },
          //                             child: Text('gallery'),
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                   );
          //                 });
          //             //
          //           },
          //           child: Text('Choose Image'))
          //     ],
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DrawerHeader(
                child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.account_box,
                      size: 70,
                      color: Colors.indigo,
                    )),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'User Name',
                      style: TextStyle(color: Colors.black,fontSize: 20),
                    )),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Username@gmail.com',
                      style: TextStyle(color: Colors.black,fontSize: 20),
                    ))
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: Text('Profile', style: TextStyle(color: Colors.black,fontSize: 20)),
                leading: Icon(
                  Icons.account_circle,
                  size: 30,
                  color: Colors.indigo,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile_info()),);
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
                title: Text('Home', style: TextStyle(color: Colors.black,fontSize: 20)),
                leading: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.indigo,
                ),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
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
                title: Text('LogOut', style: TextStyle(color: Colors.black,fontSize: 20)),
                leading: Icon(
                  Icons.logout,
                  size: 30,
                  color: Colors.indigo,
                ),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>login()));
                  Fluttertoast.showToast(
                      msg: 'LogOut', toastLength: Toast.LENGTH_LONG);
                },
              ),
            ),
          ),

          Divider(thickness: 2,color: Colors.black26,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: Text('Oder_List', style: TextStyle(color: Colors.black,fontSize: 20)),
                leading: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.indigo,
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
                title: Text('Product_List', style: TextStyle(color: Colors.black,fontSize: 20)),
                leading: Icon(
                  Icons.add_shopping_cart_sharp,
                  size: 30,
                  color: Colors.indigo,
                ),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Listpro()));
                  Fluttertoast.showToast(
                      msg: 'Product_List', toastLength: Toast.LENGTH_LONG);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: Text('About Us', style: TextStyle(color: Colors.black,fontSize: 20)),
                leading: Icon(
                  Icons.description,
                  size: 30,
                  color: Colors.indigo,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>AboutUs()));
                  Fluttertoast.showToast(
                      msg: 'About Us', toastLength: Toast.LENGTH_LONG);
                },
              ),
            ),
          ),
          Divider(thickness: 2,color: Colors.black26,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                title: Text('Privecy policy ', style: TextStyle(color: Colors.black,fontSize: 20)),
                leading: Icon(
                  Icons.description,
                  size: 30,
                  color: Colors.indigo,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>privecy()));
                  Fluttertoast.showToast(
                      msg: 'Privecy policy', toastLength: Toast.LENGTH_LONG);
                },
              ),
            ),
          ),

        ],
      ),
    );
  }

  // _getFromGallery() async {
  //   PickedFile? pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 300,
  //     maxHeight: 300,
  //   );
  //   if (pickedFile != null) {
  //     setState(() {
  //       imageFile = File(pickedFile.path);
  //     });
  //   }
  // }


    getShapref() async {
      final pref = await SharedPreferences.getInstance();

      setState(() {
        name = pref.getString('user_name')!;
        pass = pref.getString('pass')!;
      });
    }

  // _getFromcamera() async {
  //   PickedFile? pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.camera,
  //     maxWidth: 300,
  //     maxHeight: 300,
  //   );
  //   if (pickedFile != null) {
  //     setState(() {
  //       imageFile = File(pickedFile.path);
  //     });
  //   }
  // }

  // Widget displaySignatureFile() {
  //   return new SizedBox(
  //     height: 480.0,
  //     width: 480.0,
  //     child: imageFile == null
  //         ? new Icon(Icons.camera_alt_outlined, size: 100)
  //         : ClipRRect(
  //             borderRadius: BorderRadius.circular(150.0),
  //             child: new Image.file(
  //               imageFile!,
  //               fit: BoxFit.fill,
  //             )),
  //   );
  // }
}
