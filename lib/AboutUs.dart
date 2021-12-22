import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 6.0,
        backgroundColor: Colors.blueGrey,
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(90.0),
            topRight: Radius.circular(90.0),
            bottomLeft: Radius.elliptical(10, 8),
          ),
        ),
        title: Text(
          "About Us",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(

            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(color:Colors.blueGrey ,
            child: Text(
                "মিষ্টি হলো চিনির বা গুড়ের রসে ভেজানো ময়দার গোলা কিংবা দুধ- চিনি মিশিয়ে তৈরি বিভিন্ন আকৃতির ছানার অথবা ময়দার টুকরো করা খাবার।"
                    " বাঙালির খাওয়া-দাওয়ায় মিষ্টি একটি অতি জনপ্রিয় উপকরণ। "
                " বাঙালির কোন উপলক্ষ-অনুষ্ঠানই মিষ্টি ছাড়া পূর্ণতা পায় না। মিষ্টির নাম শুনলেই জিভে জল আসে।"
                " বাংলাদেশে মিষ্টিকে পণ্য করে গড়ে উঠেছে অগণিত নামী-দামী মিষ্টি-বিক্রয়কেন্দ্র। "
                    "সেই আদিযুগের লাড্ডু থেকে শুরু করে সন্দেশ, কালোজাম পেরিয়ে আজ মিষ্টির প্রকারভেদ শিল্পের পর্যায়ে চলে গেছে। "
                    "বিভিন্ন রকমের মিষ্টি স্বাদ, আকারে এমনকি নামকরণে ভিন্নতা নিয়ে জনপ্রিয়। "
                    "বাংলাদেশ ভারত পাকিস্তান শ্রীলঙ্কা নেপাল মায়ানমার এই অঞ্চলে মিষ্টির প্রচুর ব্যবহার করা হয় সামাজিক ও পারিবারিক অনুষ্ঠানে মিষ্টির ব্যবহার অত্যন্ত প্রবল ।"
                    "এই অঞ্চলে যে পরিমাণ মিষ্টি মানুষ ব্যবহার করে এমন এই পরিমাণ মিষ্টি কখনো বিশ্বের অন্য দেশে ব্যবহার করা হয় না",
              style: TextStyle(color: Colors.white,fontSize: 25),),
          ),
        )),
      ),
    );
  }
}
