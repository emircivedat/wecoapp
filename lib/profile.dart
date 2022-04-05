import 'package:flutter/material.dart';

import 'anasayfa.dart';

class profile extends StatelessWidget {
  profile({
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
        title: Text(
          'Profilim',
          style: TextStyle(
            fontFamily: 'Bree Serif',
            color: const Color(0xFF383D3C),
          ),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40),
          SizedBox(
            child: Center(
              child: Image.asset(
                "assets/images/user.png",
              ),
            ),
            height: 120,
          ),
          SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 25),
              Center(
                child: Text(
                  "Yağmur Kaya",
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 30),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Text(
                  "Student at Koç University",
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 20),
                ),
              ),
              SizedBox(height: 2),
              Center(
                child: Text(
                  "Currently in Istanbul,Turkey",
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 20),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Text(
                  "7 Etkinlik   |   9 Tavsiye",
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 80),
              Align(
                alignment: Alignment(-0.8, -2),
                child: Text(
                  "I prefer co-",
                  style: TextStyle(
                    fontFamily: 'Bree Serif',
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/travelling.png"),
                    iconSize: 40,
                    padding: EdgeInsets.only(right: 30),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/drawing.png"),
                    padding: EdgeInsets.only(right: 30),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/volleyball.png"),
                    padding: EdgeInsets.only(right: 30),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/coding.png"),
                    iconSize: 40,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
