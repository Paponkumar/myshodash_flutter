import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myshodash/profile.dart';
import 'package:myshodash/singup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'forget.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String user = '';
  String pass = '';

  @override
  void initState() {
    // TODO: implement initState
    getSharpref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/Shodashlogin.jpg',
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      fillColor: Colors.deepPurpleAccent,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter your Name',
                      icon: Icon(
                        Icons.account_box_outlined,
                        size: 30,
                        color: Colors.indigoAccent,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                      icon: Icon(
                        Icons.lock,
                        size: 30,
                        color: Colors.indigoAccent,
                      )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF2443DF)),
                child: TextButton(
                    onPressed: () {
                      if (usernameController.text.isEmpty &&
                          passController.text.isEmpty) {
                        Fluttertoast.showToast(
                            msg: 'Please give a valid ID and Pass',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.SNACKBAR,
                            backgroundColor: Colors.amberAccent,
                            textColor: Colors.pink);
                      } else if (usernameController.text == user &&
                          passController.text == pass) {
                        Fluttertoast.showToast(
                          msg: 'Login sucessful',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.amberAccent,
                          textColor: Colors.pink,
                        );
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile_info()));
                      } else {
                        Fluttertoast.showToast(
                            msg: 'Please give a valid ID and Pass',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.SNACKBAR,
                            backgroundColor: Colors.amberAccent,
                            textColor: Colors.pink);
                      }
                    },
                    child: Text('Sign In',
                        style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 24)))),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Forgot()));
                      },
                      child: Text(
                        'Forgot Password',
                        style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                color: Color(0xFF6194CB), fontSize: 20)),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: Text('Have an account? Sign up',
                          style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                  color: Color(0xFF7DEE69), fontSize: 18))),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  getSharpref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      user = pref.getString('user_name') ?? '';
      pass = pref.getString("pass") ?? '';
    });
  }
}
