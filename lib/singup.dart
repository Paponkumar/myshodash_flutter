
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';


class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  DateTime? _dateTime;
  int radioValue =0;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFFCFCFC) ,
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text("Sing Up"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.red,Colors.blue],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
        ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: usernameController,
                cursorColor: Colors.pink,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter your Name',
                    icon: Icon(
                      Icons.account_box_outlined,color: Colors.black,
                      size: 50,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                keyboardType: TextInputType.phone,
                controller: passController,
                cursorColor: Colors.pink,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: 'User pass',
                    hintText: 'Enter your pass',
                    icon: Icon(
                      Icons.account_box_outlined,color: Colors.black,
                      size: 50,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      getDate();
                    },
                    icon: Icon(
                      Icons.date_range_outlined,color: Colors.black,
                      size: 50,
                    )),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        border:
                        Border.all(width: 1, color: Colors.blue),
                      ),
                      child: Center(
                          child: _dateTime == null
                              ? Flexible(child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Date',
                              hintText: 'Enter your Date',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            keyboardType: TextInputType.datetime,cursorColor: Colors.pink,
                          ))
                              : Text(
                              'Date : ${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}'))),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: radioValue,
                        onChanged: (value){
                          setState(() {
                            radioValue = value as int;
                          });
                        }
                    ),
                    Text('Male'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: radioValue,
                        onChanged: (value){
                          setState(() {
                            radioValue = value as int;
                          });
                        }
                    ),
                    Text('FeMale')
                  ],
                ),

                Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: radioValue,
                        onChanged: (value){
                          setState(() {
                            radioValue = value as int;
                          });
                        }
                    ),
                    Text('Others')
                  ],
                ),

              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFDF2424)),
              child: TextButton(
                  onPressed: () {
                    if(usernameController.text.isEmpty||passController.text.isEmpty||radioValue==0 ||  _dateTime == null){
                      Fluttertoast.showToast(msg: 'Enter User name or Pass',toastLength: Toast.LENGTH_LONG);
                    }else{
                      setSharePref();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                    }
                  },
                  child: Text('Submit',
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              color: Color(0xFFFFFFFF), fontSize: 24)))),
            ),

          ],
        ),
      ),
    );
  }

  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 2));
    setState(() {
      _dateTime = date;


    });
  }

  setSharePref()async{

    final pref = await SharedPreferences.getInstance();
    pref.setString('user_name', usernameController.text);
    pref.setString('pass', passController.text);
  }
}