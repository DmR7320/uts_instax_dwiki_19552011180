import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const gambaranawal());

class gambaranawal extends StatelessWidget {
  const gambaranawal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {'/second': (context) => _Deskripsi1()},
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: const Color(0xFFFFFFFF),
        )),
        home: gambaranawal1(
          title: '',
        ));
  }
}

class gambaranawal1 extends StatefulWidget {
  const gambaranawal1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<gambaranawal1> createState() => _gambaranawal();
}

class _gambaranawal extends State<gambaranawal1> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            margin: EdgeInsets.only(left: 85, top: 250),
            width: 200,
            child: Image.asset("assets/gambarkamera/gambarawal.png")),
        Container(
          margin: EdgeInsets.only(left: 85, top: 260),
          child: Text(
            "Made With ❤️ \| © 2021",
            style: TextStyle(fontSize: 10),
          ),
        )
      ]),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {'/second': (context) => _Deskripsi1()},
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: const Color(0xFFFFFFFF),
        )),
        home: MyHomePage(
          title: '',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => _Deskripsi1()));
  }

  final List<Map<Object, dynamic>> _allUsers = [
    {
      "title1": "Limited Edition",
      "title2": "Instax ",
      "title3": "Mini ",
      "title4": "Mint ",
      "title5": "7+",
      "title6": "\$ ",
      "title7": "49.90",
      "warnabox": Color(0xff70b1a1),
      "gambarkamera": Image.asset('assets/gambarkamera/1.png',
          alignment: Alignment.centerRight),
      "halaman": _Deskripsi1(),
      "warnatombol": Color(0xff70b1a1),
    },
    {
      "title1": "Limited Edition",
      "title2": "Instax ",
      "title3": "Mini ",
      "title4": "Blue ",
      "title5": "7+",
      "title6": "\$ ",
      "title7": "50.90",
      "warnabox": Color(0xff77a0c6),
      "gambarkamera": Image.asset('assets/gambarkamera/2.png',
          alignment: Alignment.centerRight),
      "halaman": _Deskripsi2(),
      "warnatombol": Color(0xff77a0c6),
    },
    {
      "title1": "Limited Edition",
      "title2": "Instax ",
      "title3": "Mini ",
      "title4": "Choral ",
      "title5": "7+",
      "title6": "\$ ",
      "title7": "51.90",
      "warnabox": Color(0xffb0463c),
      "gambarkamera": Image.asset('assets/gambarkamera/3.png',
          alignment: Alignment.centerRight),
      "halaman": _Deskripsi3(),
      "warnatombol": Color(0xffb0463c),
    },
    {
      "title1": "Limited Edition",
      "title2": "Instax ",
      "title3": "Mini ",
      "title4": "Pink ",
      "title5": "7+",
      "title6": "\$ ",
      "title7": "52.90",
      "warnabox": Color(0xffcf9496),
      "gambarkamera": Image.asset('assets/gambarkamera/4.png',
          alignment: Alignment.centerRight),
      "halaman": _Deskripsi4(),
      "warnatombol": Color(0xffcf9496),
    },
    {
      "title1": "Limited Edition",
      "title2": "Instax ",
      "title3": "Mini ",
      "title4": "Lavender ",
      "title5": "7+",
      "title6": "\$ ",
      "title7": "53.90",
      "warnabox": Color(0xff855f8c),
      "gambarkamera": Image.asset('assets/gambarkamera/5.png',
          alignment: Alignment.centerRight),
      "halaman": _Deskripsi5(),
      "warnatombol": Color(0xff855f8c),
    },
  ];

  final tombol = [];
  List<Map<Object, dynamic>> _databaru = [];
  @override
  initState() {
    _databaru = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<Object, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["title4"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _databaru = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          leading: Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.orange[900]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                child: Icon(
                  Icons.menu,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
          title: Container(
              padding: EdgeInsets.only(left: 60),
              child: Image.asset(
                'assets/gambarkamera/judul.png',
                height: 100,
                width: 100,
              )),
          actions: [
            Container(
                width: 55,
                padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.white)))),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 15.0,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                height: 30,
                margin: EdgeInsets.only(
                  top: 10,
                  right: 20,
                  left: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                    onChanged: (value) => _runFilter(value),
                    style: (TextStyle(color: Colors.white, fontSize: 10)),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(13.0),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey),
                    ))),
            Container(
              height: 730,
              child: _databaru.isNotEmpty
                  ? ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _databaru.length,
                      itemBuilder: (context, index) => Stack(
                            children: [
                              Container(
                                child: Card(
                                  margin: EdgeInsets.only(
                                      right: 40, left: 10, top: 10, bottom: 5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    tileColor: _databaru[index]["warnabox"],
                                    contentPadding: EdgeInsets.only(
                                        top: 5, left: 10, right: 5),
                                    subtitle: Column(children: [
                                      Row(children: [
                                        Text(_databaru[index]["title1"],
                                            style: TextStyle(
                                              fontSize: 9.0,
                                              color: Colors.white,
                                            )),
                                      ]),
                                      SizedBox(height: 7),
                                      Row(children: [
                                        Text(_databaru[index]["title2"],
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            )),
                                        Text(_databaru[index]["title3"],
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(_databaru[index]["title4"],
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        Text(_databaru[index]["title5"],
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                      SizedBox(height: 10),
                                      Row(children: [
                                        Text(_databaru[index]["title6"],
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            )),
                                        Text(_databaru[index]["title7"],
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                      SizedBox(height: 55),
                                    ]),
                                  ),
                                ),
                              ),
                              Container(
                                  height: 110,
                                  width: 500,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: ListTile(
                                      subtitle: _databaru[index]
                                          ["gambarkamera"],
                                    ),
                                  )),
                              Container(
                                height: 25,
                                width: 50,
                                margin: EdgeInsets.only(left: 20, top: 90),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              _databaru[index]["halaman"]),
                                    );
                                  },
                                  child: Text(
                                    'Buy',
                                    style: TextStyle(
                                        color: _databaru[index]["warnatombol"],
                                        fontSize: 9),
                                  ),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              ),
                            ],
                          ))
                  : const Text(
                      '',
                      style: TextStyle(fontSize: 24),
                    ),
            )
          ],
        )));
  }
}

class _Deskripsi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: Container(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: '')),
                );
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(left: 5)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xff70b1a1))))),
              child: Icon(
                Icons.arrow_back_ios,
                size: 15.0,
                color: Color(0xff70b1a1),
              ),
            )),
        title: Container(
            padding: EdgeInsets.only(left: 60),
            child: Image.asset(
              'assets/gambarkamera/judul.png',
              height: 100,
              width: 100,
            )),
        actions: [
          Container(
              width: 55,
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.white)))),
                child: Icon(
                  Icons.more_vert,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 150,
              width: 150,
              child: Image.asset("assets/gambarkamera/1.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Instax ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "Mini Mint 7+",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff70b1a1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 222,
              ),
              child: Text(
                "Point and Shoot",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 104,
              ),
              child: Text(
                "Mini But With Full-Size Memories",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2x3 sized photos you can show and tell.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Using professional high-quality film technology (as you'd expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 267,
              ),
              child: Text(
                "Mini Film",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Mini moments with maximum impact. What's your next mini moment?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 132,
              ),
              child: Text(
                "Plenty of Great Color Choices",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Avaible in five awesome colors: Lavender, Seafoem Green, Coral, Light Pink & Light Blue",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 147,
              ),
              child: Text(
                "The Mini7+ Has Your Back!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Depending upon the weather conditions, you can easily control brightness to obtain a great picture",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 211,
              ),
              child: Text(
                "Fun All The Time!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Live in the moment and enjoy your Mini 7+, and give your day some instant fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 0.5, color: Colors.black))),
        height: 60,
        child: Row(children: [
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "\$ 50.90",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
          Container(
              width: 100,
              margin: EdgeInsets.only(left: 170),
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff70b1a1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )))
        ]),
      ),
    );
  }
}

class _Deskripsi2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: Container(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: '')),
                );
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(left: 5)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xff77a0c6))))),
              child: Icon(
                Icons.arrow_back_ios,
                size: 15.0,
                color: Color(0xff77a0c6),
              ),
            )),
        title: Container(
            padding: EdgeInsets.only(left: 60),
            child: Image.asset(
              'assets/gambarkamera/judul.png',
              height: 100,
              width: 100,
            )),
        actions: [
          Container(
              width: 55,
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.white)))),
                child: Icon(
                  Icons.more_vert,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 150,
              width: 150,
              child: Image.asset("assets/gambarkamera/2.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Instax ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "Mini Blue 7+",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff77a0c6),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 222,
              ),
              child: Text(
                "Point and Shoot",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 104,
              ),
              child: Text(
                "Mini But With Full-Size Memories",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2x3 sized photos you can show and tell.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Using professional high-quality film technology (as you'd expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 267,
              ),
              child: Text(
                "Mini Film",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Mini moments with maximum impact. What's your next mini moment?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 132,
              ),
              child: Text(
                "Plenty of Great Color Choices",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Avaible in five awesome colors: Lavender, Seafoem Green, Coral, Light Pink & Light Blue",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 147,
              ),
              child: Text(
                "The Mini7+ Has Your Back!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Depending upon the weather conditions, you can easily control brightness to obtain a great picture",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 211,
              ),
              child: Text(
                "Fun All The Time!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Live in the moment and enjoy your Mini 7+, and give your day some instant fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 0.5, color: Colors.black))),
        height: 60,
        child: Row(children: [
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "\$ 50.90",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
          Container(
              width: 100,
              margin: EdgeInsets.only(left: 170),
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff77a0c6)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )))
        ]),
      ),
    );
  }
}

class _Deskripsi3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: Container(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: '')),
                );
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(left: 5)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xffb0463c))))),
              child: Icon(
                Icons.arrow_back_ios,
                size: 15.0,
                color: Color(0xffb0463c),
              ),
            )),
        title: Container(
            padding: EdgeInsets.only(left: 60),
            child: Image.asset(
              'assets/gambarkamera/judul.png',
              height: 100,
              width: 100,
            )),
        actions: [
          Container(
              width: 55,
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.white)))),
                child: Icon(
                  Icons.more_vert,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 150,
              width: 150,
              child: Image.asset("assets/gambarkamera/3.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Instax ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "Mini Choral 7+",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffb0463c),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 222,
              ),
              child: Text(
                "Point and Shoot",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 104,
              ),
              child: Text(
                "Mini But With Full-Size Memories",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2x3 sized photos you can show and tell.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Using professional high-quality film technology (as you'd expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 267,
              ),
              child: Text(
                "Mini Film",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Mini moments with maximum impact. What's your next mini moment?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 132,
              ),
              child: Text(
                "Plenty of Great Color Choices",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Avaible in five awesome colors: Lavender, Seafoem Green, Coral, Light Pink & Light Blue",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 147,
              ),
              child: Text(
                "The Mini7+ Has Your Back!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Depending upon the weather conditions, you can easily control brightness to obtain a great picture",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 211,
              ),
              child: Text(
                "Fun All The Time!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Live in the moment and enjoy your Mini 7+, and give your day some instant fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 0.5, color: Colors.black))),
        height: 60,
        child: Row(children: [
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "\$ 50.90",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
          Container(
              width: 100,
              margin: EdgeInsets.only(left: 170),
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffb0463c)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )))
        ]),
      ),
    );
  }
}

class _Deskripsi4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: Container(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: '')),
                );
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(left: 5)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xffcf9496))))),
              child: Icon(
                Icons.arrow_back_ios,
                size: 15.0,
                color: Color(0xffcf9496),
              ),
            )),
        title: Container(
            padding: EdgeInsets.only(left: 60),
            child: Image.asset(
              'assets/gambarkamera/judul.png',
              height: 100,
              width: 100,
            )),
        actions: [
          Container(
              width: 55,
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.white)))),
                child: Icon(
                  Icons.more_vert,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 150,
              width: 150,
              child: Image.asset("assets/gambarkamera/4.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Instax ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "Mini Pink 7+",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffcf9496),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 222,
              ),
              child: Text(
                "Point and Shoot",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 104,
              ),
              child: Text(
                "Mini But With Full-Size Memories",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2x3 sized photos you can show and tell.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Using professional high-quality film technology (as you'd expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 267,
              ),
              child: Text(
                "Mini Film",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Mini moments with maximum impact. What's your next mini moment?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 132,
              ),
              child: Text(
                "Plenty of Great Color Choices",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Avaible in five awesome colors: Lavender, Seafoem Green, Coral, Light Pink & Light Blue",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 147,
              ),
              child: Text(
                "The Mini7+ Has Your Back!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Depending upon the weather conditions, you can easily control brightness to obtain a great picture",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 211,
              ),
              child: Text(
                "Fun All The Time!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Live in the moment and enjoy your Mini 7+, and give your day some instant fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 0.5, color: Colors.black))),
        height: 60,
        child: Row(children: [
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "\$ 50.90",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
          Container(
              width: 100,
              margin: EdgeInsets.only(left: 170),
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffcf9496)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )))
        ]),
      ),
    );
  }
}

class _Deskripsi5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: Container(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: '')),
                );
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(left: 5)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xff855f8c))))),
              child: Icon(
                Icons.arrow_back_ios,
                size: 15.0,
                color: Color(0xff855f8c),
              ),
            )),
        title: Container(
            padding: EdgeInsets.only(left: 60),
            child: Image.asset(
              'assets/gambarkamera/judul.png',
              height: 100,
              width: 100,
            )),
        actions: [
          Container(
              width: 55,
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.white)))),
                child: Icon(
                  Icons.more_vert,
                  size: 15.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 150,
              width: 150,
              child: Image.asset("assets/gambarkamera/5.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Instax ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  "Mini Lavender 7+",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff855f8c),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 222,
              ),
              child: Text(
                "Point and Shoot",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 104,
              ),
              child: Text(
                "Mini But With Full-Size Memories",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2x3 sized photos you can show and tell.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Using professional high-quality film technology (as you'd expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 267,
              ),
              child: Text(
                "Mini Film",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Mini moments with maximum impact. What's your next mini moment?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 132,
              ),
              child: Text(
                "Plenty of Great Color Choices",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Avaible in five awesome colors: Lavender, Seafoem Green, Coral, Light Pink & Light Blue",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 147,
              ),
              child: Text(
                "The Mini7+ Has Your Back!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Depending upon the weather conditions, you can easily control brightness to obtain a great picture",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 211,
              ),
              child: Text(
                "Fun All The Time!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 30),
              child: Text(
                "Live in the moment and enjoy your Mini 7+, and give your day some instant fun!",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 10.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 0.5, color: Colors.black))),
        height: 60,
        child: Row(children: [
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "\$ 50.90",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
          Container(
              width: 100,
              margin: EdgeInsets.only(left: 170),
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff855f8c)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )))
        ]),
      ),
    );
  }
}
