import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashbord.dart';
import 'login.dart';



class Forgot extends StatefulWidget {


  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {

  TextEditingController UsernameController = TextEditingController();
  TextEditingController PassController = TextEditingController();
  TextEditingController ConfirmPassController = TextEditingController();


  String user_name = '';
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
      appBar: AppBar(
        elevation: 6.0,
        backgroundColor: Colors.black,
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(90.0),
            topRight: Radius.circular(90.0),
            bottomLeft: Radius.elliptical(10, 8),

          ),),
        title: Text("Forgot Page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: UsernameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter your Name',
                  icon: Icon(
                    Icons.account_box_outlined,
                    size: 30,color: Colors.indigoAccent,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: PassController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New Pass',
                  hintText: 'Enter your New Pass',
                  icon: Icon(
                    Icons.account_box_outlined,
                    size: 30,color: Colors.indigoAccent,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ConfirmPassController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Pass',
                  hintText: 'Enter your Confirm Pass',
                  icon: Icon(
                    Icons.account_box_outlined,
                    size: 30,color: Colors.indigoAccent,
                  )),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF2443DF)),
            child: TextButton(
                onPressed: () {

                  if ( user_name == UsernameController.text){

                    if(PassController.text == ConfirmPassController.text){
                      setSharePref();
                      Navigator.push(context,MaterialPageRoute(builder: (context) => login()));
                    }else{
                      Fluttertoast.showToast(
                        msg: 'Please enter a valid pass',
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.SNACKBAR,
                        backgroundColor: Colors.amberAccent,
                        textColor: Colors.pink,
                      );
                    }
                  } else{
                    Fluttertoast.showToast(
                      msg: 'Please enter a valid pass',
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.SNACKBAR,
                      backgroundColor: Colors.amberAccent,
                      textColor: Colors.pink,
                    );
                  }
                },
                child: Text('Sign In',
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            color: Color(0xFFFFFFFF), fontSize: 24)))
            ),
          ),

          Text("User Name:$user_name"),
          Text('Password :$pass'),

        ],
      ),
    );
  }

  getSharpref() async{

    final pref = await SharedPreferences.getInstance();

    setState(() {
      user_name=pref.getString('user_name') ?? '';
      pass= pref.getString("pass") ?? '';
    });

  }

  setSharePref()async{

    final pref = await SharedPreferences.getInstance();
    pref.setString('pass', PassController.text);
  }
}


