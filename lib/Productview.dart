import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshodash/Invoice.dart';
import 'package:myshodash/Productlistmodel.dart';

class View extends StatefulWidget {
  final productlistmodel proDetails;

  View(this.proDetails);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Center(
            child: Text(
              'Details',
            ),
          ),
          iconTheme: IconThemeData(color: Colors.yellow),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 10,
                child: SingleChildScrollView(
                  child: Flexible(
                    flex: 1,
                    child: Container(
                      child: Image.network(widget.proDetails.imageUrl),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                  flex: 15,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          widget.proDetails.title,
                          style: TextStyle(color: Colors.cyanAccent),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Price:\$ ${widget.proDetails.price}',
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                              Text(
                                "Descount:${widget.proDetails.discount}",
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                              Card(
                                color: Colors.black,
                                elevation: 5,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Rating",
                                          style: TextStyle(
                                              color: Colors.cyanAccent,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star_half_outlined,
                                            color: Colors.cyanAccent,
                                          ),
                                          Icon(
                                            Icons.star_half_outlined,
                                            color: Colors.cyanAccent,
                                          ),
                                          Icon(
                                            Icons.star_half_outlined,
                                            color: Colors.cyanAccent,
                                          ),
                                          Icon(
                                            Icons.star_half_outlined,
                                            color: Colors.cyanAccent,
                                          ),
                                          Icon(
                                            Icons.star_half_outlined,
                                            color: Colors.cyanAccent,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.proDetails.Descreption,
                            maxLines: 10,
                            style: TextStyle(
                                color: Colors.cyanAccent, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Flexible(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.white)),
                    height: MediaQuery.of(context).size.height / 10,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (count > 1) {
                                          count--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                        '-',
                                        style: TextStyle(
                                            color: Colors.pink, fontSize: 50),
                                      )),
                                    ),
                                  ),
                                  VerticalDivider(
                                    thickness: 1,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Center(
                                      child: Text(
                                        count.toString(),
                                        style: TextStyle(
                                            color: Colors.pink, fontSize: 30),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    thickness: 1,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (count < 50) {
                                          count++;
                                        }
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      '+',
                                      style: TextStyle(
                                          color: Colors.pink, fontSize: 50),
                                    )),
                                  ),
                                  VerticalDivider(
                                    thickness: 1,
                                  ),
                                ],
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.indigo,
                              child: Center(
                                  child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Invoice(
                                              widget.proDetails, count)));
                                },
                                child: Text(
                                  'Add To Cart',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )),
                            ))
                      ],
                    ),
                  )))
            ]));
  }
}
