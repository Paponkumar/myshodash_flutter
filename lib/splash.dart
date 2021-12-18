import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';




class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  bool valu = false;

  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var GoogleFonts;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            valu = !valu;
          });
        },
      ),
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    child: Image.asset("images/Splash pic.jpg"),
                    alignment: Alignment.center,
                  )),
              SizedBox(
                height: 50,
              ),
              Container(
                  child: Text(
                    "My E-commerce",
                    style: (
                      TextStyle(color: Color(0xFF876555), fontSize: 30 )
                        ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
