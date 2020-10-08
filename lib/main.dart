import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: GoogleFonts.pacifico(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amberAccent[200],
      body: BallPageBody(),
    );
  }
}

class BallPageBody extends StatefulWidget {
  @override
  _BallPageBodyState createState() => _BallPageBodyState();
}

class _BallPageBodyState extends State<BallPageBody> {
  int imgnum = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  imgnum = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$imgnum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
