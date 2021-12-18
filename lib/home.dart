import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myshodash/Productlistmodel.dart';
import 'Productview.dart';
import 'dashbord.dart';

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
  ];

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
        'product 2',
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
        'product 3',
        'product 1desc',
        100,
        10,
        'Descreption',
        20,
        'kg',
        5,
        "https://sgp1.digitaloceanspaces.com/cosmosgroup-dc/news/qqwYxlIFK9HiYbgQj1uWjvT11UgYs3IsCj5gD3dc.jpeg"),
    productlistmodel(
        4,
        'product 4',
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
      backgroundColor: Colors.blue,
      drawer: MainDrawer(),
      appBar: AppBar(
        
        title: Center(
          child: Text(
            'Home',
          ),
        ),
        iconTheme: IconThemeData(color: Colors.yellow),
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
                      childAspectRatio: (2 / 2),
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
                            Text('Product desc'),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.people_rounded),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              label: 'Games',
              icon: Icon(Icons.videogame_asset),
              backgroundColor: Colors.black54),
          BottomNavigationBarItem(
              label: 'For you',
              icon: Icon(Icons.favorite),
              backgroundColor: Color(0xFF060266)),
          BottomNavigationBarItem(
              label: 'Offer',
              icon: Icon(Icons.all_inclusive),
              backgroundColor: Color(0xFF595F31)),
        ],
        backgroundColor: Colors.black26,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white70,
        elevation: 25,
        currentIndex: _selectNavPosiotion,
        onTap: (int index) {
          setState(() {
            _selectNavPosiotion = index;
          });
          Fluttertoast.showToast(
              msg: index.toString(), toastLength: Toast.LENGTH_LONG);
        },
      ),
    );
  }
}
