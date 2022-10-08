import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:octashop/pages/home_page.dart';
import 'package:octashop/pages/newsandpromotion_page.dart';
import 'package:octashop/pages/voucher_page.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {

  int currentIndex = 1;

  final screens = [
    VoucherPage(),
    HomePage(),
    NewsandPromotion()
  ];

  @override
  Widget build(BuildContext context) {

    final items = <Widget>[
    Icon(Icons.card_giftcard, size: 30,),
    Icon(Icons.home, size: 30,),
    Icon(Icons.library_books, size: 30,),
  ];

    return Container(
      color: Colors.amber,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          body: screens[currentIndex],
          backgroundColor: Colors.grey,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: Colors.black)
            ),
            child: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: Colors.white,
              color: Colors.amber,
              height: 60,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 300),
              index: currentIndex,
              items: items,
              onTap: (index) => setState(() => this.currentIndex = index),
            ),
          ), 
        ),
      ),
    );
  }
}
