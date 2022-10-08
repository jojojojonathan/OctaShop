import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:octashop/pages/cardlist.dart';
import 'package:octashop/pages/login_page.dart';

class NewsandPromotion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsandPromotionState();
  }
}

class NewsandPromotionState extends State<NewsandPromotion> {
  var _ctx = null;

  int _currentIndex = 0;

  List cardList=[
    MobileLegend(),
    FreeFire(),
    Valorant(),
    RagnarokX(),
    GenshinImpact()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  void _logout() {
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'News & Promotion',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () => _logout(),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: [
                Container(
                  child: Text(
                    'Weakly Deals',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,), textAlign: TextAlign.center,
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  ),
                  items: cardList.map((card){
                  return Builder(
                    builder:(BuildContext context){
                      return Container(
                        height: MediaQuery.of(context).size.height*0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Colors.blueAccent,
                          child: card,
                        ),
                      );
                    }
                  );
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index ? Colors.amber : Colors.black,
                      ),
                    );
                  }),
                ),
                Container(
                  child: Text(
                    'News',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30), textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10,10,10,0),
                  height: 220,
                  width: double.maxFinite,
                  child: Card(
                    color: Colors.grey,
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset('images/MobileLegends.jpeg', fit: BoxFit.fill, height: 170.0,),
                          ),
                        ),
                        Text('Nikmati event 11.11 dengan beberapa promo yang disediakan Mobile Legend: Bang Bang'),
                      ],
                    )
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10,10,10,0),
                  height: 220,
                  width: double.maxFinite,
                  child: Card(
                    color: Colors.grey,
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset('images/UFF.jpg', fit: BoxFit.fill, height: 170.0, width: 380.0,),
                          ),
                        ),
                        Text('Sea Games ke 31 mengadakan turnamen esport dimana salah satunya game Free Fire'),
                      ],
                    )
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10,10,10,0),
                  height: 220,
                  width: double.maxFinite,
                  child: Card(
                    color: Colors.grey,
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset('images/UV.jpg', fit: BoxFit.fill, height: 170.0, width: 400.0,),
                          ),
                        ),
                        Text('Pada beberapa hari lalu, Team Cloud 9(C9) memenangkan turnamen dunia dan berhasil mengankat piala'),
                      ],
                    )
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10,10,10,0),
                  height: 220,
                  width: double.maxFinite,
                  child: Card(
                    color: Colors.grey,
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset('images/UGI.jpg', fit: BoxFit.fill, height: 170.0, width: 500.0,),
                          ),
                        ),
                        Text('Genshin Impact sedang rilis versi terbarunya yaitu 2.7 Beta Version. Mari bergabung dan mainkan!'),
                      ],
                    )
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10,10,10,0),
                  height: 220,
                  width: double.maxFinite,
                  child: Card(
                    color: Colors.grey,
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset('images/URGX.jpg', fit: BoxFit.fill, height: 170.0, width: 500.0,),
                          ),
                        ),
                        Text('Game RagnarokX emoticon 2 telah dirilis pada tanggal 25 Juni 2021 yang lalu. Ayo gunakan emot terbarunya'),
                      ],
                    )
                  ),
                ),
              ],
            )
          )
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}