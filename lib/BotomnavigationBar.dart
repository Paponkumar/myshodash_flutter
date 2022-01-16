import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myshodash/AboutUs.dart';
import 'package:myshodash/Listproduct.dart';
import 'package:myshodash/HomePage.dart';
import 'package:myshodash/Profile.dart';

class Myhome extends StatefulWidget {


  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  PageController pageController= PageController();

  List<Widget> pages = [Home(),AboutUs(),Profile_info(),Listpro()];

  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.people_rounded),
              backgroundColor: Colors.red),

          BottomNavigationBarItem(
              label: 'About Us',
              icon: Icon(Icons.favorite),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              label: 'Profile Info',
              icon: Icon(Icons.verified_user_outlined),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              label: 'List',
              icon: Icon(Icons.list),
              backgroundColor: Colors.red),
        ],
        backgroundColor: Colors.black26,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white70,
        elevation: 25,
        currentIndex: selectedIndex,
        onTap: (int index) {

          pageController.jumpToPage(index);

          Fluttertoast.showToast(
              msg: index.toString(), toastLength: Toast.LENGTH_LONG);
        },
      ),
    );
  }

  void onPageChanged(int value) {
    setState(() {
      selectedIndex = value;
    });
  }
}
