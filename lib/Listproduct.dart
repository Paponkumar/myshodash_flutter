import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshodash/Productlistmodel.dart';

import 'Productview.dart';



class Listpro extends StatefulWidget {

  @override
  _ListproState createState() => _ListproState();
}

class _ListproState extends State<Listpro> {
  /* All product list*/
  final List<productlistmodel> productlist = [
    productlistmodel(
        1,
        'চমচম',
        'Product 1desc',
        150,
        10,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'kg',
        5,
        "https://miro.medium.com/max/800/0*XMPs9rjc_cwvuX5q.jpg"),
    productlistmodel(
        2,
        'Rosh Irani',
        'product 1desc',
        100,
        10,
        'Rosh Irani vogue বিশেষভাবে Rosh Ltd দ্বারা উত্পাদিত। এটি খুবই সুস্বাদু, কম চিনি এবং সূক্ষ্ম দৃষ্টিভঙ্গি। আপনি যখন খাবেন তখন আপনি গরুর দুধের গন্ধ অনুভব করতে পারবেন। এটি নরম, সুস্বাদু মিষ্টি এবং গ্রাহকদের কাছে আরও জনপ্রিয়।',
        20,
        'kg',
        5,
        "https://image.shutterstock.com/image-photo/popular-bangladeshi-sweetmeats-over-white-260nw-512012944.jpg"),
    productlistmodel(
        3,
        ' রসগোল্লা',
        'product 1desc',
        100,
        10,
        'রসগোল্লা সাদা রঙের এক প্রকার ছানার মিষ্টি। এটি চিনি বা গুড় দিয়ে তৈরি হয়। সবার কাছেই রসগোল্লা একটি জনপ্রিয় মিষ্টি। ছানা (তার মধ্যে অনেক সময় সুজির পুর দেওয়া হয়) পাকিয়ে গরম রসে ডুবিয়ে এটি প্রস্তুত করা হয়। রসগোল্লা নিয়ে পশ্চিমবঙ্গ ও ওড়িশার বিরোধ বহু দিনের। ২০১৭ সালের নভেম্বর মাসে পশ্চিমবঙ্গ সরকার রসগোল্লার জিআই ট্যাগ লাভ করে।[২] ফলে রসগোল্লার উৎপত্তি যে বাংলায় তা প্রতিষ্ঠা পায়।'
            'পশ্চিমবঙ্গ সরকারের কর্মকর্তারা বলছেন যে তারা শুধু ভৌগোলিক সূচক বা ভৌগোলিক ইঙ্গিত (জিআই) ট্যাগের জন্য অনুরোধ করেছিলেন, যা স্থানীয় রসগোল্লা বাংলার রসগোল্লা (বেঙ্গল রসগোল্লা) নামেও পরিচিত করে [৩] এবং বলেছিল যে "উড়িষ্যার সাথে কোন দ্বন্দ্ব নেই। আমাদের রসগোল্লা পরিচয় রক্ষা করার জন্য আমরা যা চাই তা আমাদের রঙিন, জমিন, স্বাদ, রসের সামগ্রী এবং উৎপাদন পদ্ধতির উভয় দিক থেকে ভিন্ন।',
        20,
        'kg',
        5,
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Bengali_Rasgula.jpg/1920px-Bengali_Rasgula.jpg"),
    productlistmodel(
        4,
        't 4',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "https://roshbd.com/wp-content/uploads/2016/11/misti-doi.jpg"),
    productlistmodel(
        5,
        'product 5',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "https://media.istockphoto.com/photos/indian-sweet-jalebi-picture-id666999634?k=20&m=666999634&s=170667a&w=0&h=ekFWP2OUchQ8tMCslvFYBTUPml9PioN1LPbjAn9xHUc="),
    productlistmodel(6, 'product 6', 'product 1desc', 100, 10, 'Descreption',
        20, 'kg', 5, "https://miro.medium.com/max/1400/0*VBJ3eN-HdrvQt7Z0.jpg"),
    productlistmodel(
        7,
        'product 7',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "http://banglarshomoy.com/wp-content/uploads/2016/07/Sweets-of-Bangladesh-3.jpg"),
    productlistmodel(
        8,
        'product 8',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "https://cdn.pixabay.com/photo/2014/12/22/12/33/sweets-577230_960_720.jpg"),
    productlistmodel(
        9,
        'product 9',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "https://thumbs.dreamstime.com/b/traditional-sweets-market-bangladesh-asian-traditional-sweets-as-background-pattern-traditional-sweets-206116910.jpg"),
    productlistmodel(
        10,
        'product 10',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "https://image.shutterstock.com/image-photo/popular-bangladeshi-sweetmeats-chamcham-over-260nw-499154284.jpg"),
    productlistmodel(
        11,
        'product 11',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "https://c.ndtvimg.com/2018-10/6n7i40g8_sharad-purnima-2018-kheer-recipe-and-benefits_625x300_23_October_18.jpg"),
    productlistmodel(
        12,
        'product 12',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCx7p1fOOP5v_WgidDO_kF7jxFerYDCvFyJNpnTQ-NYgzVwz8NQqe2heMaNEmiwVPvbjk&usqp=CAU"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Lists'),
      ),
      body: ListView.builder(
          itemCount: productlist.length,
          itemBuilder: (context, i) {
            return Card(
                child: ListTile(
              title: Text('${productlist[i].title}'),
              leading: Image.network(productlist[i].imageUrl),
              trailing: Icon(Icons.add),

            ));
          }),
    );
  }
}
