import 'package:flutter/material.dart';

import 'anasayfa.dart';

class trueone extends StatelessWidget {
  trueone({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: new AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => anasayfa()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: const Color(0xffb7ffe8),
        title: new Text(
          'İlgi Alanlarım',
          style: TextStyle(
              fontFamily: 'Bree Serif',
              fontSize: 20,
              color: const Color(0xFF47525E)),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.only(top: 25, bottom: 5),
        childAspectRatio: 8.0 / 8.0,
        children: <Widget>[
          Column(
            children: [
              Image.asset('assets/images/sol1.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "weco- spor",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/sag1.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "weco- müzik",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/sol2.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "weco- sanat",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/sag2.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "weco- teknoloji",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/sol3.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "weco- doğa",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/sag3.png',
                height: 120,
                width: 120,
                color: Colors.amber,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "weco- güzellik",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
