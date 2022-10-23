// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, non_constant_identifier_names
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
void main() {
  runApp(const Dicee());
}
class Dicee extends StatelessWidget {
  const Dicee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
           backgroundColor: Colors.red,
          title: Center(child: "Dice App".text.xl.make()),
        ),
        body: Dice_page(),
      ),
    );
  }
}
class Dice_page extends StatefulWidget {
  const Dice_page({super.key});

  @override
  State<Dice_page> createState() => _Dice_pageState();
}
  int leftDiceNumb =1;
 int RightDiceNumb =6;
class _Dice_pageState extends State<Dice_page> {

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: [ 
          Expanded(child:TextButton (onPressed: () { 
            setState(() {
           leftDiceNumb=Random().nextInt(6)+1;
          }); },
          child: Image(image: AssetImage('images/$leftDiceNumb.png'))
          )
          ),
          
          Expanded(child: TextButton(onPressed: () {
            setState(() {
            RightDiceNumb=Random().nextInt(6)+1;
          });  },
          child: Image(image: AssetImage('images/$RightDiceNumb.png'))
          )
          )
        ],
       ).p(20),
    );
    
  }
}