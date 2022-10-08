import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:octashop/pages/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  var _ctx = null;

  void _logout(){Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => LoginPage()));}

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: ListTile(
            leading: Image.asset('images/logo_after.png'),
            title: Text('Octashop'),
          )
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
                    'Games',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30), textAlign: TextAlign.center,
                  ),
                ),
                CarouselSlider(
                  items: [
                    Image(image: AssetImage('images/FreeFire.png')),
                    Image(image: AssetImage('images/GenshinImpactLogo.png')),
                    Image(image: AssetImage('images/MobileLegendLogo.png')),
                    Image(image: AssetImage('images/RagnarokXLogo.png')),
                    Image(image: AssetImage('images/ValorantLogo.png')),
                  ],
                  options: CarouselOptions(
                      initialPage: 2,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      enlargeCenterPage: true
                  )
                ),
                Container(
                  child: Text(
                    'Octashop setiap bulannya jutaan gamers menggunakan octashop untuk melakukan pembelian kredit game dengan mudah dan tepercaya. dan kredit game akan ditambahkan secara otomatis ,  kedalam game yang di Top-up oleh gamers',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}