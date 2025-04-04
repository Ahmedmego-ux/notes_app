import 'package:flutter/material.dart';
import 'package:flutter_application_5/constant.dart';

class CustomeBottom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: kprimarycolor,
        borderRadius: BorderRadius.circular(8)
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(child: Text('Add',style: TextStyle(color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      ),)),
    );
  }
}