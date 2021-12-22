import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class JsonGetData extends StatefulWidget {

  @override
  State<JsonGetData> createState() => _JsonGetDataState();
}

class _JsonGetDataState extends State<JsonGetData> {
  final url = "https://jsonplaceholder.typicode.com/posts";

  var _postjson = [];

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _postjson.length,
          itemBuilder: (context, index){
            final load = _postjson[index];
            return Card(
              elevation: 20,
              child: ListTile(
                title: Text('Title : ${load['title']}'),
              ),
            );
          }),
    );
  }

  void fetchData() async {

    try{
      final response = await http.get(Uri.parse(url));
      final  jsondata = jsonDecode(response.body) as List;

      setState(() {
        _postjson = jsondata;
      });

    }catch(e){
      Fluttertoast.showToast(msg: "Plese check your Internet connection", toastLength: Toast.LENGTH_LONG);
    }

  }
}