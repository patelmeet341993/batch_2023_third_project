import 'package:flutter/material.dart';
class MyButonSL extends StatelessWidget {

  final Function clickFun;

  MyButonSL({required this.clickFun});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        clickFun("stateless");
      },
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text("My Button 2",style: TextStyle(color: Colors.white),),
        color: Colors.grey,
      ),
    );
  }
}
