import 'package:flutter/material.dart';
import "dart:math";
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text("Ask Me Anything"),
      ),
      body: BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int decision = 1;
  void decied () {
    setState(() {
      decision = 1 + Random().nextInt(5);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            decied();
          },
          child: Image.asset("images/ball$decision.png"),
        ),
      ),
    );
  }
}
