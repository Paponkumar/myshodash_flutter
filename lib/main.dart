import 'package:flutter/material.dart';
import 'package:myshodash/HomePage.dart';
import 'package:myshodash/login.dart';

import 'splash.dart';

void main(){
  runApp(ooo());

}
class ooo extends StatelessWidget {
  const ooo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: splash(),
      //home: Home(),
    );
  }
}

