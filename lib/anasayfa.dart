import 'package:flutter/material.dart';
import 'package:flutterxd/profile.dart';

import 'trueone.dart';
import 'giris.dart';
import 'profile.dart';
import 'bulten.dart';

class anasayfa extends StatelessWidget {
  anasayfa({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: new AppBar(
        centerTitle: true,
        leading: Image.asset('assets/images/wecologo.png'),
        backgroundColor: const Color(0xffb7ffe8),
        title: Text(
          'weco-',
          style: TextStyle(
            fontFamily: 'Bree Serif',
            color: const Color(0xFF383D3C),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => giris()),
              );
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.only(top: 25),
        childAspectRatio: 10.0 / 11.0,
        children: <Widget>[
          Column(
            children: [
              Image.asset('assets/images/mesaj.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "Mesaj Kutusu",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            bulten() //here pass the actual values of these variables, for example false if the payment isn't successfull..etc
                        ),
                  );
                },
                child: Image.asset('assets/images/bultenlerim.png',
                    height: 120, width: 120),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "Bültenlerim",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            trueone() //here pass the actual values of these variables, for example false if the payment isn't successfull..etc
                        ),
                  );
                },
                child: Image.asset(
                  'assets/images/puzzle.png',
                  height: 120,
                  width: 120,
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "İlgi Alanlarım",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/grup.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "Gruplarım",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/takvim.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "Meydan Okumalarım",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/ayarlar.png', height: 120, width: 120),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(
                "Ayarlarım",
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
