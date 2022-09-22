import 'package:flutter/material.dart';
class Gifts extends StatelessWidget {
  const Gifts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text("Gifts page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );

  }
}
