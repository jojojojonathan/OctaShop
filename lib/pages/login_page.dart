import 'package:flutter/material.dart';
import 'package:octashop/pages/bottomnavbar.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var _ctrlUser = TextEditingController();
  var _ctrlPass = TextEditingController();
  var _ctx = null;

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(_ctx).showSnackBar(SnackBar(content: Text(message)));
  }

  void _validate() {
    if (_ctrlUser.text == "") return _showSnackbar('Username must be filled');
    if (_ctrlPass.text == "") {
      return _showSnackbar('Password must be filled');
    }
    if (_ctrlUser.text.length <= 6) {
      return _showSnackbar(
          'Username length must greater than 6. If it’s less than or equal to 6');
    }
    if (_ctrlPass.text.length < 4 || _ctrlPass.text.length > 16) {
      return _showSnackbar('Password length must between 4 - 16');
    } else {
      _showSnackbar('Register Success!');
      Navigator.push(
          _ctx, MaterialPageRoute(builder: (_ctx) => BottomNavBar()));
    }
    _ctrlUser.clear();
    _ctrlPass.clear();
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Image.asset('images/logo_after.png'),
          Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: _ctrlUser,
              decoration: InputDecoration(
                  hintText: "Username", border: OutlineInputBorder()),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
                obscureText: true,
                controller: _ctrlPass,
                decoration: InputDecoration(
                    hintText: "Password", border: OutlineInputBorder())),
          ),
          Container(
            child: Text(
              'Forgot Password?',
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
          ),
          ElevatedButton(
            onPressed: _validate,
            child: Text('Login'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
          )
        ],
      ),
    );
  }
}
