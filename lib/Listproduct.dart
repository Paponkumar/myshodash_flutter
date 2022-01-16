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
        'Click to more',
        250,
        10,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://miro.medium.com/max/800/0*XMPs9rjc_cwvuX5q.jpg"),
    productlistmodel(
        2,
        'Rosh Irani',
        'product 1desc',
        199,
        15,
        'Rosh Irani vogue বিশেষভাবে Rosh Ltd দ্বারা উত্পাদিত। এটি খুবই সুস্বাদু, কম চিনি এবং সূক্ষ্ম দৃষ্টিভঙ্গি। আপনি যখন খাবেন তখন আপনি গরুর দুধের গন্ধ অনুভব করতে পারবেন। এটি নরম, সুস্বাদু মিষ্টি এবং গ্রাহকদের কাছে আরও জনপ্রিয়।',
        20,
        'Unlimited',
        5,
        "https://image.shutterstock.com/image-photo/popular-bangladeshi-sweetmeats-over-white-260nw-512012944.jpg"),
    productlistmodel(
        3,
        'রসগোল্লা',
        'product 1desc',
        240,
        10,
        'রসগোল্লা সাদা রঙের এক প্রকার ছানার মিষ্টি। এটি চিনি বা গুড় দিয়ে তৈরি হয়। সবার কাছেই রসগোল্লা একটি জনপ্রিয় মিষ্টি। ছানা (তার মধ্যে অনেক সময় সুজির পুর দেওয়া হয়) পাকিয়ে গরম রসে ডুবিয়ে এটি প্রস্তুত করা হয়। রসগোল্লা নিয়ে পশ্চিমবঙ্গ ও ওড়িশার বিরোধ বহু দিনের। ২০১৭ সালের নভেম্বর মাসে পশ্চিমবঙ্গ সরকার রসগোল্লার জিআই ট্যাগ লাভ করে।[২] ফলে রসগোল্লার উৎপত্তি যে বাংলায় তা প্রতিষ্ঠা পায়।'
            'পশ্চিমবঙ্গ সরকারের কর্মকর্তারা বলছেন যে তারা শুধু ভৌগোলিক সূচক বা ভৌগোলিক ইঙ্গিত (জিআই) ট্যাগের জন্য অনুরোধ করেছিলেন, যা স্থানীয় রসগোল্লা বাংলার রসগোল্লা (বেঙ্গল রসগোল্লা) নামেও পরিচিত করে [৩] এবং বলেছিল যে "উড়িষ্যার সাথে কোন দ্বন্দ্ব নেই। আমাদের রসগোল্লা পরিচয় রক্ষা করার জন্য আমরা যা চাই তা আমাদের রঙিন, জমিন, স্বাদ, রসের সামগ্রী এবং উৎপাদন পদ্ধতির উভয় দিক থেকে ভিন্ন।',
        20,
        'Unlimited',
        5,
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Bengali_Rasgula.jpg/1920px-Bengali_Rasgula.jpg"),
    productlistmodel(
        4,
        'মিষ্টি দই',
        'product 1desc',
        180,
        12,
        'ROSH থেকে Doi.1 কেজি মিষ্টির দাম দেখানো হয়েছে। আমরা শীঘ্রই 2, 3, 4 … kgs এর পরিমাণ বাড়াব। রোশ শহরের নতুন মিষ্টির দোকান। '
            'আমাদের গ্রাহকদের কি পাগল করে তোলে আপনি আমাদের ম্যানেজার মোঃ সানোয়ার হোসেনকে জিজ্ঞাসা করতে পারেন। রান্নাঘরে জাদু তৈরি করেন এমন ব্যক্তি?'
            'এর জন্য কিছু বিশেষ ব্যক্তিগত কৌশল প্রয়োজন যা একজন ব্যক্তি সারাক্ষণ ধরে অর্জন করে। সবচেয়ে গুরুত্বপূর্ণ উপাদান যা একজনের থাকতে হবে তা হল আবেগ এবং কাজের প্রতি আসক্তি।',
        20,
        'Unlimited',
        5,
        "https://roshbd.com/wp-content/uploads/2016/11/misti-doi.jpg"),
    productlistmodel(
        5,
        'মতিচূর লাড্ডু',
        'product 1desc',
        400,
        20,
        'চূর অর্থ ভাঙ্গা বা চূর্ন-বিচূর্ন করা। অর্থাৎ, মতিচূর মানে মুক্তার ভাঙ্গা গুঁড়া। ছোট ছোট মুক্তা দানার মতো বোঁদে বানিয়ে সেগুলোকে একসাথে হাতে চেপে তৈরি হয় মতিচূরের লাড্ডু। আর এজন্যই এমন চমৎকার নামের উৎপত্তি।প্রধান উপকরণ: বেসন, চিনি, বাদাম, কিশমিশ, ঘি ইত্যা...',
        20,
        'Unlimited',
        5,
        "https://upload.wikimedia.org/wikipedia/commons/8/82/Motichur_Laddu_%282%29.jpg"),
    productlistmodel(6, 'রসমালাই', 'product 1desc', 100, 10, 'রসমালাই দক্ষিণ এশিয়ার বাংলাদেশ, ভারত, পাকিস্তান, নেপাল এর একটি জনপ্রিয় মিষ্টি খাদ্য। ছোট ছোট আকারের রসগোল্লাকে চিনির সিরায় ভিজিয়ে তার উপর জ্বাল-দেওয়া ঘন মিষ্টি দুধ ঢেলে রসমালাই বানানো হয়। বাংলাই রসমালাইয়ের উৎপত্তি স্থল। বাংলাদেশের কুমিল্লার এবং ভারতের কলকাতার রসমালাই খুবই বিখ্যাত।',
        20, 'Unlimited', 5, "https://miro.medium.com/max/1400/0*VBJ3eN-HdrvQt7Z0.jpg"),
    productlistmodel(
        7,
        'product 7',
        'product 1desc',
        320,
        15,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "http://banglarshomoy.com/wp-content/uploads/2016/07/Sweets-of-Bangladesh-3.jpg"),
    productlistmodel(
        8,
        'product 8',
        'product 1desc',
        250,
        15,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://cdn.pixabay.com/photo/2014/12/22/12/33/sweets-577230_960_720.jpg"),
    productlistmodel(
        9,
        'product 9',
        'product 1desc',
        320,
        15,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://thumbs.dreamstime.com/b/traditional-sweets-market-bangladesh-asian-traditional-sweets-as-background-pattern-traditional-sweets-206116910.jpg"),
    productlistmodel(
        10,
        'product 10',
        'product 1desc',
        380,
        20,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://image.shutterstock.com/image-photo/popular-bangladeshi-sweetmeats-chamcham-over-260nw-499154284.jpg"),
    productlistmodel(
        11,
        'product 11',
        'product 1desc',
        200,
        10,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://c.ndtvimg.com/2018-10/6n7i40g8_sharad-purnima-2018-kheer-recipe-and-benefits_625x300_23_October_18.jpg"),
    productlistmodel(
        12,
        'product 12',
        'product 1desc',
        250,
        15,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCx7p1fOOP5v_WgidDO_kF7jxFerYDCvFyJNpnTQ-NYgzVwz8NQqe2heMaNEmiwVPvbjk&usqp=CAU"),
    productlistmodel(
        13,
        'সাদা মিষ্টি',
        'product 1desc',
        420,
        17,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://www.allbdrecipe.com/Images/Article/Img_2020922_103928_518.jpg"),
    productlistmodel(
        14,
        'রসগোল্লার',
        'ঘরে তৈরি এই মিষ্টি খেতে যেমন সুস্বাদু',
        320,
        20,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://d30fl32nd2baj9.cloudfront.net/media/2014/09/29/2.jpg1/ALTERNATES/w300/2.jpg"),
    productlistmodel(
        15,
        'product 12',
        'product 1desc',
        500,
        25,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://mybdtips.com/wp-content/uploads/2020/07/maxresdefault-2.jpg"),
    productlistmodel(
        16,
        'লালমোহন মিষ্টি',
        'ঘরে তৈরি এই মিষ্টি খেতে যেমন সুস্বাদু',
        300,
        15,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://www.alokitobhola.com/media/imgAll/2020April/f8af48567c92c616930335db0479335c-5f0b24bb45fa2-2011181214.jpg"),
    productlistmodel(
        17,
        'পানিতোয়া মিষ্টি',
        'product 1desc',
        449,
        15,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://i2.wp.com/greenwaybd.com/wp-content/uploads/2021/06/panitoa-misti.jpg?fit=939%2C564&ssl=1"),
    productlistmodel(
        18,
        'ছানার জিলাপি',
        'product 1desc',
        180,
        10,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://i1.wp.com/greenwaybd.com/wp-content/uploads/2021/06/chanar-jilapi.jpg?fit=800%2C533&ssl=1"),
    productlistmodel(
        19,
        'ছানার সন্দেশ',
        'product 1desc',
        320,
        15,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://i1.wp.com/greenwaybd.com/wp-content/uploads/2021/06/chanar-sandesh.jpg?fit=600%2C500&ssl=1"),
    productlistmodel(
        20,
        'প্যারা সন্দেশ',
        'product 1desc',
        180,
        10,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://i2.wp.com/greenwaybd.com/wp-content/uploads/2021/06/pera-sondesh.jpg?fit=720%2C637&ssl=1"),
    productlistmodel(
        21,
        'রসগোল্লা',
        'product 1desc',
        260,
        10,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://i0.wp.com/greenwaybd.com/wp-content/uploads/2021/06/jessore-jamtola-misty.jpg?fit=500%2C500&ssl=1"),
    productlistmodel(
        22,
        'Khejur Gur (Patali)',
        'product 1desc',
        490,
        15,
        'চমচম এলে সাধারণত টাঙ্গাইলের নাম আসে। তবে রাজবাড়ী এ ব্যাপারে সহজেই প্রতিদ্বন্দ্বিতা করতে পারে। এর চমচম খুবই সুস্বাদু কিন্তু তেমন খ্যাতি পায়নি। এর প্রধান কারণ হল রাজবাড়ী রাজধানী ঢাকা থেকে কিছুটা দূরে এবং সেখানে সরাসরি বাস বা রেল যোগাযোগ নেই (আপনাকে ফেরিতে করে প্রবল পদ্মা নদী পাড়ি দিতে হবে)। ফলে সেখানে যেতে অনেক সময় লাগে। যাইহোক, আপনি যদি রাজবাড়ীতে যান তবে এই মিষ্টিটি ট্রাই করতে ভুলবেন না।',
        20,
        'Unlimited',
        5,
        "https://i1.wp.com/greenwaybd.com/wp-content/uploads/2021/06/khejur-gur-patali.jpg?fit=500%2C500&ssl=1"),
    productlistmodel(
        23,
        'মিষ্টি কুমড়ার লাড্ডু',
        'product 1desc',
        220,
        15,
        'লাড্ডু খেতে সবাই কমবেশি পছন্দ করেন। বেশিরভাগ সময় বাইরে থেকেই বিভিন্ন পদের লাড্ডু কিনে খাওয়া হয়ে থাকে। মতিচুর,বোহান্দি, বেসন, সুজি, ডালসহ বিভিন্ন উপকরণ দিয়ে তৈরি করা যায় লাড্ডু। আবার সবজি দিয়েও তৈরি করা যায় মজাদার লাড্ডু। তবে কখনো কি মিষ্টি কুমড়ার লাড্ডু খেয়েছেন? ',
        20,
        'Unlimited',
        5,
        "https://www.abnews24.com/assets/news_photos/2021/03/14/image-121891-1615706191.jpg"),
    productlistmodel(
        24,
        'পেড়া সন্দেশ',
        'product 1desc',
        250,
        15,
        "সন্দেশ খেতে পছন্দ করেন না এমন মানুষ খুঁজে পাওয়া দায়। বিশেষ করে সন্দেশ শিশুদের খুবই প্রিয় একটি খাবার। পেড়া সন্দেশের নাম আমরা কমবেশি সবাই জানি।",
        20,
        'Unlimited',
        5,
        "https://www.jugantor.com/assets/news_photos/2018/02/09/image-15927-1518171527.jpg"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text("List Product"),
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
      body: ListView.builder(
          itemCount: productlist.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 7,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => View(productlist[i])));
                },
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 130,
                        width: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                NetworkImage(productlist[i].imageUrl),
                                fit: BoxFit.fill),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productlist[i].title,maxLines: 1,
                            style:
                            TextStyle(color: Colors.black, fontSize: 25,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("\$${productlist[i].price}",
                                  style: TextStyle(fontSize: 25,),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "\$ ${productlist[i].discount}",
                                style: TextStyle(
                                  fontSize: 20,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 2.85,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            productlist[i].unit.toString(),maxLines: 1,
                            style:
                            TextStyle(color: Colors.black, fontSize: 25,),
                          ),
                        ],
                      )
                    ],
                  ),
                  height: 120,
                ),
              ),
            );
          }),
    );
  }
}
