import 'package:flutter/material.dart';
import 'package:octashop/pages/detail_voucher_page.dart';
import 'package:octashop/pages/login_page.dart';
import 'package:page_transition/page_transition.dart';

class VoucherPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VoucherPageState();
  }
}

class VoucherPageState extends State<VoucherPage>with TickerProviderStateMixin {
  var _ctx = null;

  void _logout(){Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => LoginPage()));}

  void _detailVoucherML1(){Navigator.push(_ctx, PageTransition(child: DetailVoucherML1(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherML2(){Navigator.push(_ctx, PageTransition(child: DetailVoucherML2(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherML3(){Navigator.push(_ctx, PageTransition(child: DetailVoucherML3(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherML4(){Navigator.push(_ctx, PageTransition(child: DetailVoucherML4(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherML5(){Navigator.push(_ctx, PageTransition(child: DetailVoucherML5(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}

  void _detailVoucherFF1(){Navigator.push(_ctx, PageTransition(child: DetailVoucherFF1(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherFF2(){Navigator.push(_ctx, PageTransition(child: DetailVoucherFF2(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherFF3(){Navigator.push(_ctx, PageTransition(child: DetailVoucherFF3(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherFF4(){Navigator.push(_ctx, PageTransition(child: DetailVoucherFF4(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherFF5(){Navigator.push(_ctx, PageTransition(child: DetailVoucherFF5(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}

  void _detailVoucherVL1(){Navigator.push(_ctx, PageTransition(child: DetailVoucherVL1(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherVL2(){Navigator.push(_ctx, PageTransition(child: DetailVoucherVL2(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherVL3(){Navigator.push(_ctx, PageTransition(child: DetailVoucherVL3(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherVL4(){Navigator.push(_ctx, PageTransition(child: DetailVoucherVL4(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherVL5(){Navigator.push(_ctx, PageTransition(child: DetailVoucherVL5(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}

  void _detailVoucherRX1(){Navigator.push(_ctx, PageTransition(child: DetailVoucherRX1(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherRX2(){Navigator.push(_ctx, PageTransition(child: DetailVoucherRX2(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherRX3(){Navigator.push(_ctx, PageTransition(child: DetailVoucherRX3(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherRX4(){Navigator.push(_ctx, PageTransition(child: DetailVoucherRX4(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherRX5(){Navigator.push(_ctx, PageTransition(child: DetailVoucherRX5(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}

  void _detailVoucherGI1(){Navigator.push(_ctx, PageTransition(child: DetailVoucherGI1(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherGI2(){Navigator.push(_ctx, PageTransition(child: DetailVoucherGI2(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherGI3(){Navigator.push(_ctx, PageTransition(child: DetailVoucherGI3(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherGI4(){Navigator.push(_ctx, PageTransition(child: DetailVoucherGI4(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}
  void _detailVoucherGI5(){Navigator.push(_ctx, PageTransition(child: DetailVoucherGI5(), type: PageTransitionType.scale, duration: Duration(seconds: 1), alignment: Alignment.centerRight));}

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          bottom: TabBar(
            tabs: [
              Tab(icon: Image.asset('images/MobileLegendLogo.png'),),
              Tab(icon: Image.asset('images/FreeFire.png'),),
              Tab(icon: Image.asset('images/ValorantLogo.png'),),
              Tab(icon: Image.asset('images/RagnarokXLogo.png'),),
              Tab(icon: Image.asset('images/GenshinImpactLogo.png'),)
            ],
          ),
          title: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: ListTile(
              leading: Image.asset('images/logo_after.png'),
              title: Text('Voucher',),
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
                  onTap: () => _logout()
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  ListTile(
                    leading: Image.asset('images/MobileLegendLogo.png'),
                    title: Text('154 Diamonds + 16 Bonus'),
                    subtitle: Text('Rp 51.060'),
                    onTap: _detailVoucherML1,
                  ),
                  ListTile(
                    leading: Image.asset('images/MobileLegendLogo.png'),
                    title: Text('217 Diamonds + 23 Bonus'),
                    subtitle: Text('Rp 72.150'),
                    onTap: _detailVoucherML2,
                  ),
                  ListTile(
                    leading: Image.asset('images/MobileLegendLogo.png'),
                    title: Text('256 Diamonds + 40 Bonus'),
                    subtitle: Text('Rp 88.800'),
                    onTap: _detailVoucherML3,
                  ),
                  ListTile(
                    leading: Image.asset('images/MobileLegendLogo.png'),
                    title: Text('367 Diamonds + 41 Bonus'),
                    subtitle: Text('Rp 122.100'),
                    onTap: _detailVoucherML4,
                  ),
                  ListTile(
                    leading: Image.asset('images/MobileLegendLogo.png'),
                    title: Text('503 Diamonds + 65 Bonus'),
                    subtitle: Text('Rp 166.500'),
                    onTap: _detailVoucherML5,
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    leading: Image.asset('images/FreeFire.png'),
                    title: Text('5 Diamonds'),
                    subtitle: Text('Rp 1.000'),
                    onTap: _detailVoucherFF1,
                  ),
                  ListTile(
                    leading: Image.asset('images/FreeFire.png'),
                    title: Text('720 Diamonds'),
                    subtitle: Text('Rp 100.000'),
                    onTap: _detailVoucherFF2,
                  ),
                  ListTile(
                    leading: Image.asset('images/FreeFire.png'),
                    title: Text('1450 Diamonds'),
                    subtitle: Text('Rp 200.000'),
                    onTap: _detailVoucherFF3,
                  ),
                  ListTile(
                    leading: Image.asset('images/FreeFire.png'),
                    title: Text('2180 Diamonds'),
                    subtitle: Text('Rp 300.000'),
                    onTap: _detailVoucherFF4,
                  ),
                  ListTile(
                    leading: Image.asset('images/FreeFire.png'),
                    title: Text('3640 Diamonds'),
                    subtitle: Text('Rp 500.000'),
                    onTap: _detailVoucherFF5,
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    leading: Image.asset('images/ValorantLogo.png'),
                    title: Text('420 Point'),
                    subtitle: Text('Rp 50.000'),
                    onTap: _detailVoucherVL1,
                  ),
                  ListTile(
                    leading: Image.asset('images/ValorantLogo.png'),
                    title: Text('700 Point'),
                    subtitle: Text('Rp 80.000'),
                    onTap: _detailVoucherVL2,
                  ),
                  ListTile(
                    leading: Image.asset('images/ValorantLogo.png'),
                    title: Text('1375 Point'),
                    subtitle: Text('Rp 150.000'),
                    onTap: _detailVoucherVL3,
                  ),
                  ListTile(
                    leading: Image.asset('images/ValorantLogo.png'),
                    title: Text('2400 Point'),
                    subtitle: Text('Rp 250.000'),
                    onTap: _detailVoucherVL4,
                  ),
                  ListTile(
                    leading: Image.asset('images/ValorantLogo.png'),
                    title: Text('4000 Point'),
                    subtitle: Text('Rp 400.000'),
                    onTap: _detailVoucherVL5,
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    leading: Image.asset('images/RagnarokXLogo.png'),
                    title: Text('2580 Diamonds'),
                    subtitle: Text('Rp 59.000'),
                    onTap: _detailVoucherRX1,
                  ),
                  ListTile(
                    leading: Image.asset('images/RagnarokXLogo.png'),
                    title: Text('6450 Diamonds'),
                    subtitle: Text('Rp 147.500'),
                    onTap: _detailVoucherRX2,
                  ),
                  ListTile(
                    leading: Image.asset('images/RagnarokXLogo.png'),
                    title: Text('12140 Diamonds'),
                    subtitle: Text('Rp 295.000'),
                    onTap: _detailVoucherRX3,
                  ),
                  ListTile(
                    leading: Image.asset('images/RagnarokXLogo.png'),
                    title: Text('26780 Diamonds'),
                    subtitle: Text('Rp 590.000'),
                    onTap: _detailVoucherRX4,
                  ),
                  ListTile(
                    leading: Image.asset('images/RagnarokXLogo.png'),
                    title: Text('39780 Diamonds'),
                    subtitle: Text('Rp 885.000'),
                    onTap: _detailVoucherRX5,
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    leading: Image.asset('images/GenshinImpactLogo.png'),
                    title: Text('300 + 30 Genesis Crystals'),
                    subtitle: Text('Rp 79.000'),
                    onTap: _detailVoucherGI1,
                  ),
                  ListTile(
                    leading: Image.asset('images/GenshinImpactLogo.png'),
                    title: Text('980 + 110 Genesis Crystals'),
                    subtitle: Text('Rp 249.000'),
                    onTap: _detailVoucherGI2,
                  ),
                  ListTile(
                    leading: Image.asset('images/GenshinImpactLogo.png'),
                    title: Text('1980 + 260 Genesis Crystals'),
                    subtitle: Text('Rp 479.000'),
                    onTap: _detailVoucherGI3,
                  ),
                  ListTile(
                    leading: Image.asset('images/GenshinImpactLogo.png'),
                    title: Text('3280 + 600 Genesis Crystals'),
                    subtitle: Text('Rp 799.000'),
                    onTap: _detailVoucherGI4,
                  ),
                  ListTile(
                    leading: Image.asset('images/GenshinImpactLogo.png'),
                    title: Text('6480 + 1600 Genesis Crystals'),
                    subtitle: Text('Rp 1.599.000'),
                    onTap: _detailVoucherGI5,
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.grey,
      ),
    );
  }
}