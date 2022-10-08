import 'package:flutter/material.dart';
import 'package:octashop/pages/bottomnavbar.dart';

var _ctrlPID = TextEditingController();
var _ctx = null;

//Detail Voucher ML1
class DetailVoucherML1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherML1State();
  }
}

class DetailVoucherML1State extends State<DetailVoucherML1> {
  int currentIndex = 0;
  void _validate() {
    late Widget page;
    if (_ctrlPID.text == "") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be filled"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else if (double.tryParse(_ctrlPID.text) == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("PlayerID must be numeric"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Success!!"),
            content: new Text("Success!"),
            actions: <Widget>[
              new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.push(_ctx,
                        MaterialPageRoute(builder: (_ctx) => BottomNavBar()));
                  }),
            ],
          );
        },
      );
    }
    _ctrlPID.clear();
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset('images/MobileLegendLogo.png'),
          ListTile(
            title: Text(
              'Mobile Legends: Bang Bang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '154 Diamonds + 16 Bonus',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 51.060', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: _validate,
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher ML2
class DetailVoucherML2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherML2State();
  }
}

class DetailVoucherML2State extends State<DetailVoucherML2> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset('images/MobileLegendLogo.png'),
          ListTile(
            title: Text(
              'Mobile Legends: Bang Bang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '217 Diamonds + 23 Bonus',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 72.150', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                  _ctrlPID.clear();
                }
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher ML3
class DetailVoucherML3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherML3State();
  }
}

class DetailVoucherML3State extends State<DetailVoucherML3> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset('images/MobileLegendLogo.png'),
          ListTile(
            title: Text(
              'Mobile Legends: Bang Bang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '256 Diamonds + 40 Bonus',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 88.800', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher ML4
class DetailVoucherML4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherML4State();
  }
}

class DetailVoucherML4State extends State<DetailVoucherML4> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset('images/MobileLegendLogo.png'),
          ListTile(
            title: Text(
              'Mobile Legends: Bang Bang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '367 Diamonds + 41 Bonus',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 122.100', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher ML5
class DetailVoucherML5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherML5State();
  }
}

class DetailVoucherML5State extends State<DetailVoucherML5> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset('images/MobileLegendLogo.png'),
          ListTile(
            title: Text(
              'Mobile Legends: Bang Bang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '503 Diamonds + 65 Bonus',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 166.500', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher FF1
class DetailVoucherFF1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherFF1State();
  }
}

class DetailVoucherFF1State extends State<DetailVoucherFF1> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/FreeFire.png',
            width: 250,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Garena Free Fire Rampage',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '5 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 1.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                  _ctrlPID.clear();
                }
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher FF2
class DetailVoucherFF2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherFF2State();
  }
}

class DetailVoucherFF2State extends State<DetailVoucherFF2> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/FreeFire.png',
            width: 250,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Garena Free Fire Rampage',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '720 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 100.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher FF3
class DetailVoucherFF3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherFF3State();
  }
}

class DetailVoucherFF3State extends State<DetailVoucherFF3> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/FreeFire.png',
            width: 250,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Garena Free Fire Rampage',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '1450 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 200.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher FF4
class DetailVoucherFF4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherFF4State();
  }
}

class DetailVoucherFF4State extends State<DetailVoucherFF4> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/FreeFire.png',
            width: 250,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Garena Free Fire Rampage',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '2180 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 300.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher FF5
class DetailVoucherFF5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherFF5State();
  }
}

class DetailVoucherFF5State extends State<DetailVoucherFF5> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/FreeFire.png',
            width: 250,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Garena Free Fire Rampage',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '3640 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 500.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher VL1
class DetailVoucherVL1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherVL1State();
  }
}

class DetailVoucherVL1State extends State<DetailVoucherVL1> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/ValorantLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Valorant',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '420 Point',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 50.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher VL2
class DetailVoucherVL2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherVL2State();
  }
}

class DetailVoucherVL2State extends State<DetailVoucherVL2> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset('images/ValorantLogo.png', width: 150, height: 200),
          ListTile(
            title: Text(
              'Valorant',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '700 Point',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 80.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher VL3
class DetailVoucherVL3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherVL3State();
  }
}

class DetailVoucherVL3State extends State<DetailVoucherVL3> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset('images/ValorantLogo.png', width: 150, height: 200),
          ListTile(
            title: Text(
              'Valorant',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '1375 Point',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 150.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher VL4
class DetailVoucherVL4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherVL4State();
  }
}

class DetailVoucherVL4State extends State<DetailVoucherVL4> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset('images/ValorantLogo.png', width: 150, height: 200),
          ListTile(
            title: Text(
              'Valorant',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '2400 Point',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 250.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher VL5
class DetailVoucherVL5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherVL5State();
  }
}

class DetailVoucherVL5State extends State<DetailVoucherVL5> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(children: [
        Image.asset('images/ValorantLogo.png', width: 150, height: 200),
        ListTile(
          title: Text(
            'Valorant',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        ListTile(
          title: Text(
            '4000 Point',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('Rp 400.000', style: TextStyle(fontSize: 20)),
        ),
        Text('Input your Player ID: '),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: TextFormField(
            controller: _ctrlPID,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Player ID',
            ),
          ),
        ),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amber),
            ),
            onPressed: () {
              late Widget page;
              if (_ctrlPID.text == "") {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("Alert!!"),
                      content: new Text("PlayerID must be filled"),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text("OK"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              } else if (double.tryParse(_ctrlPID.text) == null) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("Alert!!"),
                      content: new Text("PlayerID must be numeric"),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text("OK"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("Success!!"),
                      content: new Text("Success!"),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text("OK"),
                          onPressed: () {
                            Navigator.push(
                                _ctx,
                                MaterialPageRoute(
                                    builder: (_ctx) => BottomNavBar()));
                          },
                        ),
                      ],
                    );
                  },
                );
              }
              _ctrlPID.clear();
            },
            child: Text('Buy Now')),
      ]),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher RX1
class DetailVoucherRX1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherRX1State();
  }
}

class DetailVoucherRX1State extends State<DetailVoucherRX1> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/RagnarokXLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Ragnarok X: Next Generation',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '2580 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 59.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher RX2
class DetailVoucherRX2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherRX2State();
  }
}

class DetailVoucherRX2State extends State<DetailVoucherRX2> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/RagnarokXLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Ragnarok X: Next Generation',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '6450 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 147.500', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher RX3
class DetailVoucherRX3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherRX3State();
  }
}

class DetailVoucherRX3State extends State<DetailVoucherRX3> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/RagnarokXLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Ragnarok X: Next Generation',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '12140 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 295.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher RX4
class DetailVoucherRX4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherRX4State();
  }
}

class DetailVoucherRX4State extends State<DetailVoucherRX4> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/RagnarokXLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Ragnarok X: Next Generation',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '26780 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 590.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher RX5
class DetailVoucherRX5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherRX5State();
  }
}

class DetailVoucherRX5State extends State<DetailVoucherRX5> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/RagnarokXLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Ragnarok X: Next Generation',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '39780 Diamonds',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 885.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher GI1
class DetailVoucherGI1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherGI1State();
  }
}

class DetailVoucherGI1State extends State<DetailVoucherGI1> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/GenshinImpactLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Genshin Impact',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '300 + 30 Genesis Crystals',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 79.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher GI2
class DetailVoucherGI2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherGI2State();
  }
}

class DetailVoucherGI2State extends State<DetailVoucherGI2> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/GenshinImpactLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Genshin Impact',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '980 + 110 Genesis Crystals',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 249.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher GI3
class DetailVoucherGI3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherGI3State();
  }
}

class DetailVoucherGI3State extends State<DetailVoucherGI3> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/GenshinImpactLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Genshin Impact',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '1980 + 260 Genesis Crystals',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 479.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher GI4
class DetailVoucherGI4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherGI4State();
  }
}

class DetailVoucherGI4State extends State<DetailVoucherGI4> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/GenshinImpactLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Genshin Impact',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '3280 + 600 Genesis Crystals',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 799.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

//Detail Voucher GI5
class DetailVoucherGI5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailVoucherGI5State();
  }
}

class DetailVoucherGI5State extends State<DetailVoucherGI5> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail Voucher'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/GenshinImpactLogo.png',
            width: 150,
            height: 200,
          ),
          ListTile(
            title: Text(
              'Genshin Impact',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            title: Text(
              '6480 + 1600 Genesis Crystals',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Rp 1.599.000', style: TextStyle(fontSize: 20)),
          ),
          Text('Input your Player ID: '),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: _ctrlPID,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player ID',
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                late Widget page;
                if (_ctrlPID.text == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be filled"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else if (double.tryParse(_ctrlPID.text) == null) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("PlayerID must be numeric"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Success!!"),
                        content: new Text("Success!"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.push(
                                  _ctx,
                                  MaterialPageRoute(
                                      builder: (_ctx) => BottomNavBar()));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
                _ctrlPID.clear();
              },
              child: Text('Buy Now')),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
