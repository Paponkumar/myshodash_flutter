import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home.dart';

class Profile_info extends StatefulWidget {


  @override
  _Profile_infoState createState() => _Profile_infoState();
}

class _Profile_infoState extends State<Profile_info> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController  keyboardTypeController = TextEditingController();
  TextEditingController  EmailController = TextEditingController();

  int radiovalue = 0;
  int _valueradio = 0;
  DateTime? _dateTime;

  getDate() async{
    DateTime? date = await showDatePicker(context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year-100),
        lastDate: DateTime(DateTime.now().year+2)
    );
    setState(() {
      _dateTime=date!;


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),);
            }, icon: Icon(Icons.view_headline_rounded), )
          ],
          title: Text("Custom App Bar"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.red,Colors.pink],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
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
                              size: 30,color: Colors.pink,
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
                              size: 30,color: Colors.pink,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Radio(value:1,
                        groupValue: radiovalue,
                        onChanged: (Value){
                          setState(() {
                            radiovalue = Value as int;
                          });
                        },),Text('Male'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value:2,
                        groupValue: radiovalue,
                        onChanged: (Value){
                          setState(() {
                            radiovalue = Value as int;
                          });
                        },),Text('FeMale'),
                    ],
                  ),
                ],),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.red),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Flexible  (child: IconButton(onPressed: (){
                          getDate();
                        },
                          icon: Icon(Icons.date_range_outlined),
                          color: Colors.pink,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(child: _dateTime==null? Text
                          ("DD-MM-YYYY"):Text
                          ('Date:${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}' )),
                      ),
                    ],
                  ) ,
                ),
              ),
              SizedBox(height: 20,),
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
                          size: 30,color: Colors.pink,
                        )),
                  ),
                ),
              ),

              SizedBox(height: 20,),
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
                          size: 30,color: Colors.pink,
                        )),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),child:TextButton(onPressed: (){
                  Fluttertoast.showToast(msg: radiovalue.toString(),toastLength: Toast.LENGTH_LONG);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                  child: Text('Submit',
                      style: GoogleFonts.rubik(
                          textStyle:
                          TextStyle(color: Color(0xFFDB0707), fontSize: 24))),
                )
                ),
              ),
            ],

          ),
        )
    );
  }
}
