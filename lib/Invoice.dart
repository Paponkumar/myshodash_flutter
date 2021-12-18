import 'package:flutter/material.dart';
import 'package:myshodash/Productlistmodel.dart';

class Invoice extends StatelessWidget {
  final productlistmodel productlist;
  int orderNo;

  Invoice(this.productlist, this.orderNo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text("Custom App Bar"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.black12, Colors.pink],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: ListView(
          children: [
            Center(child: Text('Invoice no : 1000')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text('Name : 1000'),
                    Text('Mobile : 1000'),
                    Text('Address : 1000'),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Image.network(productlist.imageUrl),
              title: Column(
                children: [
                  Text('${productlist.title}'),
                  Text('Number of order : $orderNo'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*class Invoice extends StatefulWidget {

  final productlistmodel productlist;
  int orderNo;

  Invoice(this.productlist, this.orderNo);

  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text("Custom App Bar"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.pink],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      backgroundColor: Colors.red,
      body: SafeArea(
        child: ListView(
          children: [
            Center(child: Text('Invoice no : 1000')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text('Name : 1000'),
                    Text('Mobile : 1000'),
                    Text('Address : 1000'),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Image.network(productlist.imageUrl),
              title: Column(
                children: [
                  Text('${Widget.productlist.title}'),
                  Text('Number of order : $orderNo'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}*/
