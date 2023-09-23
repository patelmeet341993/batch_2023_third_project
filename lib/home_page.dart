import 'package:flutter/material.dart';
import 'package:third_project/my_button_sf.dart';
import 'package:third_project/my_button_sl.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String label="Hello";


  void changeText(String text)
  {
    label=text;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: mainBody(),));
  }

  Widget mainBody(){
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Text(label,style: TextStyle(fontSize: 40,color: Colors.black),),
          MyButtonSF(clickFun: changeText,),
          SizedBox(height: 10,),
          MyButonSL(clickFun: changeText,),



        ],
      ),
    );

  }
}
