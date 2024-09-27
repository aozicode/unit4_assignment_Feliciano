import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get to know me!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFF4ACB7),
      ),
      backgroundColor: Color(0xFFFFFDEA), 
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 600,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFFF9770),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      child: Image.asset(
                        'assets/mypic.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: 'My name is...\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal, 
                                  ),
                                ),
                                TextSpan(
                                  text: 'Ashley Denise Feliciano',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold, 
                                    fontFamily: 'SpicyRice', 
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 125,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFF7371FC),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'student journalist',
                                  style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 125,
                                height: 40,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xFF7371FC),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'community leader',
                                  style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 300,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF70A6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(top: 10, left: 300, right: 100, bottom: 5),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: [
                          _gridItem(Icons.email, 'Email', 'ashleydenise@wvsu.edu.ph'),
                          _gridItem(Icons.cake_sharp, 'Birthday', 'September 23, 2003'),
                          _gridItem(Icons.info, 'Student information', '2022M0010'),
                          _gridItem(Icons.music_note, 'Favorite artist', 'Chappell Roan'),
                          _gridItem(Icons.collections_bookmark_sharp, 'Favorite quote', 'To see is to believe.'),
                          _gridItem(Icons.phone, 'Phone', '09996558903'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 500,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Color(0xFF70D6FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(bottom: 140),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30, right: 10, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Biography',
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'SpicyRice'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'I would characterize myself as someone who contains multitudes. Someone who has too many forgotten hobbies to count, and current pursuits.'
                            'I love art and I spend my life trying to perfect my craft in everything I lay interest in.',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gridItem(IconData icon, String description, String data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 20), // Icon position
          Icon(icon, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  data,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
