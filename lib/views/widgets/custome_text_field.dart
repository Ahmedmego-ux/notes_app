import 'package:flutter/material.dart';
import 'package:flutter_application_5/constant.dart';

class CustomeTextField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: 'tittle',
        hintStyle: TextStyle(color: kprimarycolor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kprimarycolor)
        
      ),
    
    );
  }

  OutlineInputBorder buildborder([Color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Color??Colors.white
      ),
        borderRadius: BorderRadius.circular(8)
      );
  }
}