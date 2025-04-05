import 'package:flutter/material.dart';
import 'package:flutter_application_5/constant.dart';

class CustomeTextField extends StatelessWidget{
  final String hintText;
  final int maxlines;
  final void Function(String?)? onSaved;
  const CustomeTextField({super.key, required this.hintText,  this.maxlines=1, this.onSaved});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if (value?.isEmpty??true){
          return 'feild is reiquired';
        }else{
          return null;
        }
      },
      onSaved:onSaved ,
      maxLines: maxlines,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: hintText,
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