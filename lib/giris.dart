import 'package:flutter/material.dart';

import 'anasayfa.dart';

class giris extends StatelessWidget {
  giris({
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Image.asset(
              "assets/images/wecologo.png",
            ),
            height: 340,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Text(
                  "Hoş Geldiniz!",
                  style: TextStyle(fontFamily: 'Bree Serif', fontSize: 40),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Yeni bir güne hoş geldiniz, giriş yapın \n veya Linkedin hesabınızı bağlayın.",
                  style: TextStyle(fontFamily: 'Bree Serif', fontSize: 15),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'Giriş yap',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Bree Serif', fontSize: 20),
                  ),
                ),
                color: Color(0xFF47525E),
              ),
              SizedBox(height: 10),
              Container(
                decoration: new BoxDecoration(color: Color(0xFF0072B1)),
                child: new ListTile(
                    leading: Image.asset("assets/images/linkedin.png"),
                    title: Text(
                      'Linkedin ile giriş yap',
                      style: TextStyle(fontFamily: 'Bree Serif', fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                anasayfa() //here pass the actual values of these variables, for example false if the payment isn't successfull..etc
                            ),
                      );
                    }),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Hesabınız yok mu? weco-' ' ya şimdi kayıt olun!',
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
