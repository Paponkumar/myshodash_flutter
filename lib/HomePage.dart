import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:myshodash/Productlistmodel.dart';
import 'Productview.dart';
import 'Drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectNavPosiotion = 1;

  final List<String> imaglist = [
    "https://static.wixstatic.com/media/05c508_773e5f8e4468403981f8470e00c00254~mv2.jpg/v1/fill/w_925,h_520,al_c,q_90/05c508_773e5f8e4468403981f8470e00c00254~mv2.webp",
    "https://1.bp.blogspot.com/-QE3glcC658E/X1knED5xYfI/AAAAAAAAL_M/8w1XKCk-l90PCoWtpD0_gR_2QU-L9J7hwCLcBGAsYHQ/s1600/Nolen%2Bgurer%2BSandesh.JPG",
    "https://img-global.cpcdn.com/recipes/8a69e435324bff0c/680x482cq70/royal-rasmalai-rolls-easy-instant-recipe-recipe-main-photo.webp",
    "https://sgp1.digitaloceanspaces.com/cosmosgroup-dc/news/2BfcCqZKjA516scJNDvaaCYoyJnHs6d2myWWK9wM.jpeg",
    "https://sgp1.digitaloceanspaces.com/cosmosgroup-dc/news/qqwYxlIFK9HiYbgQj1uWjvT11UgYs3IsCj5gD3dc.jpeg",
    "https://sgp1.digitaloceanspaces.com/cosmosgroup-dc/news/5EvQnXiG36ajqvYCLij0B6aGB0CAtNvJqNMvgnGG.jpeg",
    "https://upload.wikimedia.org/wikipedia/commons/c/c7/Jalebi.jpg",
  ];

  /* All product list*/
  final List<productlistmodel> productlist = [
    productlistmodel(
        1,
        'চমচম',
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
        400,
        20,
        'চূর অর্থ ভাঙ্গা বা চূর্ন-বিচূর্ন করা। অর্থাৎ, মতিচূর মানে মুক্তার ভাঙ্গা গুঁড়া। ছোট ছোট মুক্তা দানার মতো বোঁদে বানিয়ে সেগুলোকে একসাথে হাতে চেপে তৈরি হয় মতিচূরের লাড্ডু। আর এজন্যই এমন চমৎকার নামের উৎপত্তি।প্রধান উপকরণ: বেসন, চিনি, বাদাম, কিশমিশ, ঘি ইত্যা...',
        20,
        'Unlimited',
        5,
        "https://upload.wikimedia.org/wikipedia/commons/8/82/Motichur_Laddu_%282%29.jpg"),
    productlistmodel(6, 'রসমালাই', 'ঘরে তৈরি', 100, 10, 'রসমালাই দক্ষিণ এশিয়ার বাংলাদেশ, ভারত, পাকিস্তান, নেপাল এর একটি জনপ্রিয় মিষ্টি খাদ্য। ছোট ছোট আকারের রসগোল্লাকে চিনির সিরায় ভিজিয়ে তার উপর জ্বাল-দেওয়া ঘন মিষ্টি দুধ ঢেলে রসমালাই বানানো হয়। বাংলাই রসমালাইয়ের উৎপত্তি স্থল। বাংলাদেশের কুমিল্লার এবং ভারতের কলকাতার রসমালাই খুবই বিখ্যাত।',
        20, 'Unlimited', 5, "https://miro.medium.com/max/1400/0*VBJ3eN-HdrvQt7Z0.jpg"),
    productlistmodel(
        7,
        'product 7',
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
        'ঘরে তৈরি',
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
      drawer: MainDrawer(),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text("Home"),
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                child: CarouselSlider.builder(
                    slideBuilder: (index) {
                      return Container(
                        child: Image.network(
                          imaglist[index],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    slideTransform: CubeTransform(),
                    slideIndicator: CircularSlideIndicator(),
                    autoSliderDelay: Duration(seconds: 3),
                    enableAutoSlider: true,
                    unlimitedMode: true,
                    itemCount: imaglist.length),
              ),
            ),
           /*AspectRatio(
             aspectRatio: 3.5,
              child: CarouselSlider(
                children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: NetworkImage("https://c.ndtvimg.com/2018-10/6n7i40g8_sharad-purnima-2018-kheer-recipe-and-benefits_625x300_23_October_18.jpg"),
                           fit: BoxFit.fitWidth
                         ),
                       ),
                     ),
                   )
                ],
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  itemCount: productlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (2 / 2.8),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    View(productlist[index])));
                      },
                      child: Card(
                        elevation: 20,
                        child: Column(
                          children: [
                            Container(
                              child: Image.network(productlist[index].imageUrl),
                            ),
                            Text(productlist[index].title),
                            Text(productlist[index].desc),
                            Text(productlist[index].quantity.toString()),
                            Text(productlist[index].unit.toString()),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
