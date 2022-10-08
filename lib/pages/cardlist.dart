import 'package:flutter/material.dart';

class MobileLegend extends StatelessWidget {
  const MobileLegend({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight, 
          stops: [0.3, 1],
          colors: [Color(0xffff4000),Color(0xffffcc66)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/MobileLegends.jpeg', height: 192 ,fit: BoxFit.fill,),
        ],
      ),
    );
  }
}

class FreeFire extends StatelessWidget {
  const FreeFire({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xffff4000),Color(0xffffcc66)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/FreeFirecl.jpeg', 
            height: 192 ,
            fit: BoxFit.fill,),
        ],
      ),
    );
  }
}

class Valorant extends StatelessWidget {
  const Valorant({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xffff4000),Color(0xffffcc66)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/Valorant.jpeg', 
            height: 192,
            width: 330,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}

class RagnarokX extends StatelessWidget {
  const RagnarokX({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xffff4000),Color(0xffffcc66)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/RagnarokX.jpeg', 
            height: 192, 
            width: 330,
            fit: BoxFit.fill,),
        ],
      ),
    );
  }
}

class GenshinImpact extends StatelessWidget {
  const GenshinImpact({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xffff4000),Color(0xffffcc66)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/GenshinImpact.jpeg', 
            height: 192, 
            width: 330,
            fit: BoxFit.fill,),
        ],
      ),
    );
  }
}