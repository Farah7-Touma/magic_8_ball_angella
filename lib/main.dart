import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("Magic-Ball-8"),
          backgroundColor: Colors.black54,),
          body: magicBall(),
    ),
  ),
);

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int numberBall=2;
  @override
Widget build(BuildContext context) {
  return Container(
    color:Colors.blueAccent,
    child: InkWell(
      onTap: (){
        setState(() {
          numberBall=Random().nextInt(5)+1;
        });
      },
      child: Center(
       child: Image.asset('images/ball$numberBall.png',),
      ),
    ),
  );
}

}

