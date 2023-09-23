import 'package:flutter/material.dart';

class MyButtonSF extends StatefulWidget {

  final Function clickFun;

  const MyButtonSF({required this.clickFun});

  @override
  State<MyButtonSF> createState() => _MyButtonSFState();
}

class _MyButtonSFState extends State<MyButtonSF> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.clickFun("Statefull");
        },
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text("My Button 1",style: TextStyle(color: Colors.white),),
        color: Colors.deepPurple,
      ),
    );
  }
}
